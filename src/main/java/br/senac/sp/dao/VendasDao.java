/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.ItemCarrinhoDto;
import br.senac.sp.entidade.Produto;
import br.senac.sp.entidade.Venda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author lucas
 */
public class VendasDao {

    public List<Produto> getProdutos() {

        List<Produto> produtos = new ArrayList<>();
        Connection conexao;
        try {
            conexao = ConexaoDB.getConexao();
            String sql = "SELECT * FROM produto";
            PreparedStatement st = conexao.prepareStatement(sql);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Produto produto = new Produto(rs.getString("nome"), rs.getString("marca"), rs.getDouble("preco"), rs.getInt("quantidade"));
                produto.setCodigo(rs.getInt("idProduto"));
                produtos.add(produto);

            }

        } catch (SQLException ex) {
            Logger.getLogger(VendasDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produtos;
    }

    public List<Venda> getVendas() {

        List<Venda> vendas = new ArrayList<>();
        Connection conexao;
        try {
            conexao = ConexaoDB.getConexao();
            String sql = "SELECT * FROM VENDA";
            PreparedStatement st = conexao.prepareStatement(sql);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Venda venda = new Venda();

                venda.setId(rs.getLong("ID_VENDA"));
                venda.setIdCliente(rs.getLong("ID_CLIENTE"));
                venda.setIdFilial(rs.getLong("ID_FILIAL"));
                venda.setValorTotal(rs.getDouble("TOTAL"));
                venda.setDataVenda(rs.getDate("DATA_VENDA"));

                venda.addProdutos(this.getCarrinho(venda.getId()));

                vendas.add(venda);

            }

        } catch (SQLException ex) {
            Logger.getLogger(VendasDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vendas;
    }

    private List<ItemCarrinhoDto> getCarrinho(long idVenda) {
        List<ItemCarrinhoDto> itensCarrinho = new ArrayList<>();
        Connection conexao;
        try {
            conexao = ConexaoDB.getConexao();
            String sql = "SELECT C.ID_CARRINHO, C.ID_PRODUTO, P.IDPRODUTO, C.QUANTIDADE, P.NOME, P.PRECO, P.MARCA FROM CARRINHO AS C INNER JOIN PRODUTO AS P ON (C.ID_PRODUTO = P.IDPRODUTO) WHERE ID_VENDA = ?";
            PreparedStatement st = conexao.prepareStatement(sql);

            st.setLong(1, idVenda);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                ItemCarrinhoDto item = new ItemCarrinhoDto(rs.getInt("ID_CARRINHO"), rs.getInt("ID_PRODUTO"), rs.getString("NOME"), rs.getString("MARCA"), rs.getInt("QUANTIDADE"), rs.getDouble("PRECO"));

                itensCarrinho.add(item);
            }

        } catch (SQLException ex) {
            Logger.getLogger(VendasDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return itensCarrinho;
    }

    public boolean salvarVenda(Venda venda) {

        Connection conexao;
        try {
            conexao = ConexaoDB.getConexao();
            String sql = "INSERT INTO VENDA (ID_CLIENTE, ID_FILIAL, TOTAL, DATA_VENDA) VALUES (?,?,?,CURRENT_TIMESTAMP)";

            PreparedStatement st = conexao.prepareStatement(sql);
            st.setLong(1, venda.getIdCliente());
            st.setLong(2, venda.getIdFilial());
            st.setDouble(3, venda.getValorTotal());

            int linhasAfetadas = st.executeUpdate();

//            int id = 0;
//            if (linhasAfetadas > 0) {
//
//                System.out.println(st.getGeneratedKeys());
//                ResultSet generatedKeys = st.getGeneratedKeys();
//                if (generatedKeys.next()) {
//                    id = generatedKeys.getInt(1);
//                }
//            }

            for (ItemCarrinhoDto item : venda.getProdutosVendidos()) {
                st = conexao.prepareStatement("INSERT INTO CARRINHO (ID_VENDA, ID_PRODUTO, QUANTIDADE) VALUES ((SELECT MAX(ID_VENDA) FROM VENDA),?,?)");

                //st.setInt(1, id);
                st.setInt(1, item.getIdProduto());
                st.setInt(2, item.getQuantidade());

                st.execute();
            }

            return true;

        } catch (SQLException ex) {
            Logger.getLogger(VendasDao.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }

    }

}
