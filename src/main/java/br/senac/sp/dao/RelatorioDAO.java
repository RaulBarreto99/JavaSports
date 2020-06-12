/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.RelatorioCliente;
import br.senac.sp.entidade.RelatorioFilial;
import br.senac.sp.entidade.RelatorioProduto;
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
 * @author oz500
 */
public class RelatorioDAO {

    public static List<RelatorioFilial> gerarResultadoFilial() {

        Connection connection;
        PreparedStatement stmt;
        ResultSet resultSet;

        try {

            List<RelatorioFilial> relatorioList = new ArrayList<>();

            connection = ConexaoDB.getConexao();

            stmt = connection.prepareStatement("select FILIAL.ID_FILIAL, FILIAL.NOME as nome, sum(VENDA.TOTAL) as total from FILIAL inner join VENDA on FILIAL.ID_FILIAL = VENDA.ID_FILIAL group by FILIAL.ID_FILIAL, FILIAL.NOME order by FILIAL.ID_FILIAL");

            resultSet = stmt.executeQuery();

            while (resultSet.next()) {

                RelatorioFilial relatorio = new RelatorioFilial();

                relatorio.setId(resultSet.getInt("ID_FILIAL"));
                relatorio.setNome(resultSet.getString("nome"));
                relatorio.setTotal(resultSet.getDouble("total"));

                relatorioList.add(relatorio);
            }

            stmt.close();
            return relatorioList;

        } catch (SQLException ex) {
            Logger.getLogger(RelatorioDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public static List<RelatorioCliente> mostrarRelatorioCliente() {

        Connection connection;
        PreparedStatement stmt;
        ResultSet resultSet;

        try {

            List<RelatorioCliente> relatorioClientList = new ArrayList<>();

            connection = ConexaoDB.getConexao();

            stmt = connection.prepareStatement("select CLIENTE.ID_CLIENTE, CLIENTE.NOME as nome, CLIENTE.SOBRENOME as sobrenome, sum(VENDA.TOTAL) total from CLIENTE inner join VENDA on CLIENTE.ID_CLIENTE = VENDA.ID_CLIENTE group by CLIENTE.ID_CLIENTE, CLIENTE.NOME, CLIENTE.SOBRENOME order by CLIENTE.ID_CLIENTE");

            resultSet = stmt.executeQuery();

            while (resultSet.next()) {

                RelatorioCliente relatorioCliente = new RelatorioCliente();

                relatorioCliente.setId(resultSet.getInt("ID_CLIENTE"));
                relatorioCliente.setNome(resultSet.getString("nome"));
                relatorioCliente.setSobrenome(resultSet.getString("sobrenome"));
                relatorioCliente.setTotal(resultSet.getDouble("total"));

                relatorioClientList.add(relatorioCliente);

            }
            stmt.close();
            return relatorioClientList;

        } catch (SQLException ex) {
            Logger.getLogger(RelatorioDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public static List<RelatorioProduto> gerarRelatorioProduto() {

        Connection connection;
        PreparedStatement stmt;
        ResultSet resultSet;

        try {

            List<RelatorioProduto> relatorioProdutoList = new ArrayList<>();

            connection = ConexaoDB.getConexao();

            stmt = connection.prepareStatement("select PRODUTO.ID_PRODUTO, PRODUTO.NOME as nome, sum(CARRINHO.QUANTIDADE) as total from PRODUTO inner join CARRINHO on PRODUTO.ID_PRODUTO = CARRINHO.ID_PRODUTO group by PRODUTO.ID_PRODUTO,PRODUTO.NOME order by PRODUTO.ID_PRODUTO");


            resultSet = stmt.executeQuery();

            while (resultSet.next()) {

                RelatorioProduto relatorioProduto = new RelatorioProduto();

                relatorioProduto.setId(resultSet.getInt("ID_PRODUTO"));
                relatorioProduto.setNome(resultSet.getString("nome"));
                relatorioProduto.setTotal(resultSet.getDouble("total"));

                relatorioProdutoList.add(relatorioProduto);

            }
            stmt.close();
            return relatorioProdutoList;

        } catch (SQLException ex) {
            Logger.getLogger(RelatorioDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
