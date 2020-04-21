
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Cliente;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author Ederson_Souza
 */
public class ClienteDAO {
    
    public static boolean cadastrarCliente(Cliente cliente) {
        boolean cadastrou = false;
        Connection connection;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "insert into cliente values (default,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, cliente.getNome());
            preparedStatement.setString(2, cliente.getSobrenome());
            preparedStatement.setString(3, cliente.getDataNascimento());
            preparedStatement.setString(4, cliente.getCpf());
            preparedStatement.setString(5, cliente.getTelefone());
            preparedStatement.setString(6, cliente.getSexo());
            preparedStatement.execute();
            cadastrou = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
       return cadastrou;
    }
}
