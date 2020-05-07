/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Produto;
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
                Produto produto = new Produto(rs.getInt("idProduto"), rs.getString("nome"), rs.getString("marca"), rs.getDouble("preco"), rs.getInt("quantidade"));
                produtos.add(produto);

            }

        } catch (SQLException ex) {
            Logger.getLogger(VendasDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produtos;
    }

}
