/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Raul
 */
public class UsuarioDAO {
    public static boolean cadastrarUsuario(Usuario usuario) {
        boolean cadastrou = false;
        Connection connection;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "INSERT INTO usuario VALUES (default,?,?,?,?,?)";
            PreparedStatement PreparedStatement = connection.prepareStatement(sql);

            PreparedStatement.setString(1, usuario.getNomeUsuario());
            PreparedStatement.setString(2, usuario.getLogin());
            PreparedStatement.setString(3, usuario.getSenha());
            PreparedStatement.setString(4, usuario.getEmail());
            PreparedStatement.setString(5, usuario.getPerfil());
            PreparedStatement.execute();
            cadastrou = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return cadastrou;
    }

    public static boolean alterarUsuario(Usuario usuario, int codigo) {
        boolean alterou = false;
        Connection connection;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "UPDATE usuario SET NOME = ?,LOGIN = ?,SENHA = ?,EMAIL = ?,PERFIL = ? WHERE ID_USUARIO = ?";
            PreparedStatement PreparedStatement = connection.prepareStatement(sql);

            PreparedStatement.setString(1, usuario.getNomeUsuario());
            PreparedStatement.setString(2, usuario.getLogin());
            PreparedStatement.setString(3, usuario.getSenha());
            PreparedStatement.setString(4, usuario.getEmail());
            PreparedStatement.setString(5, usuario.getPerfil());
            PreparedStatement.setInt(6, codigo);
            PreparedStatement.execute();
            alterou = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return alterou;
    }

    public static boolean excluirUsuario(int codigo) {
        Connection connection;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean excluiu = false;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "delete  from usuario where ID_USUARIO = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, codigo);
            preparedStatement.execute();
            excluiu = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return excluiu;

    }

    public static List<Usuario> listarUsuario() {
        Connection connection;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            connection = ConexaoDB.getConexao();

            pstmt = connection.prepareStatement(
                    "SELECT * FROM usuario ORDER BY id_usuario");

            rs = pstmt.executeQuery();

            List lista = new ArrayList<>();

            while (rs.next()) {

                Usuario usuario = new Usuario();

                usuario.setCodigo(rs.getInt("id_usuario"));
                usuario.setNomeUsuario(rs.getString("nome"));
                usuario.setLogin(rs.getString("login"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setEmail(rs.getString("email"));
                usuario.setPerfil(rs.getString("perfil"));

                lista.add(usuario);

            }

            return lista;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;

        }
    }
}
