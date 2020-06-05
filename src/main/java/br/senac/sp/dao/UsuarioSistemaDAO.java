package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Usuario;
import br.senac.sp.utils.PerfilEnum;
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
 * @author Raul
 */
public class UsuarioSistemaDAO {
    public static boolean cadastrarUsuario(Usuario usuario) {
        boolean cadastrou = false;
        Connection connection;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "INSERT INTO USUARIOSISTEMA VALUES (default,?,?,?,?)";
            PreparedStatement PreparedStatement = connection.prepareStatement(sql);

            PreparedStatement.setString(1, usuario.getNome());
            PreparedStatement.setString(2, usuario.getLogin());
            PreparedStatement.setString(3, usuario.getSenha());
            PreparedStatement.setString(4, usuario.getPerfil().toString());
            PreparedStatement.execute();
            cadastrou = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return cadastrou;
    }

    public static boolean alterarSenha(Usuario usuario, int codigo) {
        boolean alterou = false;
        Connection connection;
        try {
            connection = ConexaoDB.getConexao();
            String sql = "UPDATE USUARIOSISTEMA SET SENHA = ? WHERE ID_USUARIO = ?";
            PreparedStatement PreparedStatement = connection.prepareStatement(sql);

            PreparedStatement.setString(1, usuario.getSenha());
            PreparedStatement.setInt(2, codigo);
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
            String sql = "delete from USUARIOSISTEMA where ID_USUARIO = ?";
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
                    "SELECT * FROM USUARIOSISTEMA ORDER BY id_usuario");

            rs = pstmt.executeQuery();

            List lista = new ArrayList<>();

            while (rs.next()) {

                Usuario usuario = new Usuario();

                usuario.setId(rs.getInt("id_usuario"));
                usuario.setNome(rs.getString("nome"));
                usuario.setLogin(rs.getString("usuario"));
                usuario.setSenha(rs.getString("senha"));
                
                
                usuario.setPerfil(PerfilEnum.valueOf(rs.getString("perfil")));

                lista.add(usuario);

            }

            return lista;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;

        }
    }

    public static Usuario getUsuarioSistemaByUsuario(String usuario) {
        Usuario usuarioSistema = null;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "select * from USUARIOSISTEMA where usuario=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                usuarioSistema = new Usuario();
                String login = rs.getString("usuario");
                String senha = rs.getString("senha");
                String perfil = rs.getString("perfil");
                String nome = rs.getString("nome");
                
                usuarioSistema.setNome(nome);
                usuarioSistema.setLogin(login);
                usuarioSistema.setSenha(senha);
                usuarioSistema.setPerfil(PerfilEnum.valueOf(perfil));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       return usuarioSistema;
    }
}