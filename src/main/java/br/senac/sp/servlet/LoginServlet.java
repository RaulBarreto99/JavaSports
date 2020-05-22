package br.senac.sp.servlet;

import at.favre.lib.crypto.bcrypt.BCrypt;
import br.senac.sp.dao.UsuarioSistemaDAO;
import br.senac.sp.entidade.UsuarioSistema;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tscarton
 */
public class LoginServlet extends HttpServlet {

   

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
       
        UsuarioSistema usuarioLogado = UsuarioSistemaDAO.getUsuarioSistemaByUsuario(usuario);
        
        if (usuarioLogado != null && usuarioLogado.validarSenha(senha)) {
            HttpSession sessao = request.getSession();
            sessao.setAttribute("usuario", usuarioLogado);
            response.sendRedirect(request.getContextPath() + "/protegido/index.jsp");
        } else {
            request.setAttribute("msgErro", "Usuário ou senha inválido");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    
}