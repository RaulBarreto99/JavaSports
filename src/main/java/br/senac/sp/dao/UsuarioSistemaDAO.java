package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.UsuarioSistema;
import br.senac.sp.utils.PerfilEnum;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tscarton
 */
public class UsuarioSistemaDAO {
    
    public static UsuarioSistema getUsuarioSistemaByUsuario(String usuario) {
        UsuarioSistema usuarioSistema = null;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "select * from usuariosistema where usuario=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                usuarioSistema = new UsuarioSistema();
                String nome = rs.getString("nome");
                String senha = rs.getString("senha");
                String perfil = rs.getString("perfil");
                usuarioSistema.setNome(nome);
                usuarioSistema.setUsuario(usuario);
                usuarioSistema.setSenha(senha);
                usuarioSistema.setPerfil(PerfilEnum.valueOf(perfil));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       return usuarioSistema;
    }
    
}