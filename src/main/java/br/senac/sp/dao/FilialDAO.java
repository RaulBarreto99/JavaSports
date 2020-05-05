package br.senac.sp.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Cliente;
import br.senac.sp.entidade.Filial;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FilialDAO {

    public static boolean cadastrarFilial(Filial filial) {
        boolean cadastrou = false;
        Connection connection;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "insert into filial values (default,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            
            preparedStatement.setString(1, filial.getNome());
            preparedStatement.setString(2, filial.getBairro());
            preparedStatement.setString(3, filial.getCep());
            preparedStatement.setString(4, filial.getPais());
            preparedStatement.setString(5, filial.getRua());
            preparedStatement.setString(6, filial.getComplemento());
            preparedStatement.setString(7, filial.getNumero());
            preparedStatement.setString(8, filial.getUf());
            preparedStatement.setString(9, filial.getCidade());

            preparedStatement.execute();
            cadastrou = true;
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return cadastrou;
    }

}
