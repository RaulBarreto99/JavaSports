/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import br.senac.sp.entidade.Produto;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Raul
 */
public class ProdutoDao implements InterfaceDAO{

    @Override
    public boolean insert(Object object) {
        Produto produto = (Produto) object;
        boolean cadastrou = false;
        Connection connection;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "INSERT INTO produto VALUES (default,?,?,?,?)";
            PreparedStatement PreparedStatement = connection.prepareStatement(sql);

            PreparedStatement.setString(1, produto.getNomeProduto());
            PreparedStatement.setString(2, produto.getMarca());
            PreparedStatement.setLong(3, (long) produto.getPreco());
            PreparedStatement.setInt(4, (int) produto.getQuantidade());
            PreparedStatement.execute();
            cadastrou = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return cadastrou;
    }

    @Override
    public boolean update(Object object) {
        Produto produto = (Produto) object;
        boolean alterou = false;
        Connection connection;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "UPDATE produto SET nome = ?,marca = ?,preco = ?,quantidade = ? WHERE ID_PRODUTO = ?";
            PreparedStatement PreparedStatement = connection.prepareStatement(sql);

            PreparedStatement.setString(1, produto.getNomeProduto());
            PreparedStatement.setString(2, produto.getMarca());
            PreparedStatement.setLong(3, (long) produto.getPreco());
            PreparedStatement.setInt(4, (int) produto.getQuantidade());
            PreparedStatement.setInt(5, produto.getCodigo());
            PreparedStatement.execute();
            alterou = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return alterou;
    }

    @Override
    public boolean delete(int codigo) {
        Connection connection;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean excluiu = false;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "delete  from produto where ID_PRODUTO = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, codigo);
            preparedStatement.execute();
            excluiu = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return excluiu;

    }

    @Override
    public List<Object> getAll() {
        Connection connection;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            connection = ConexaoDB.getConexao();

            pstmt = connection.prepareStatement(
                    "SELECT * FROM produto ORDER BY id_produto");

            rs = pstmt.executeQuery();

            List lista = new ArrayList<>();

            while (rs.next()) {

                Produto produto = new Produto();

                produto.setCodigo(rs.getInt("id_produto"));
                produto.setNomeProduto(rs.getString("nome"));
                produto.setMarca(rs.getString("marca"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setQuantidade(rs.getInt("quantidade"));

                lista.add(produto);

            }

            return lista;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;

        }
    }
}
