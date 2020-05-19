/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.UsuarioDAO;
import br.senac.sp.entidade.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Raul
 */
@WebServlet(name = "CadastroUsuarioServlet", urlPatterns = {"/CadastroUsuarioServlet"})

public class CadastroUsuarioServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String forward = "";
        forward = "usuario.jsp";

        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("excluir")) {
            forward = "/usuario.jsp";
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            boolean excluir = UsuarioDAO.excluirUsuario(codigo);
            String url = "";
            if (excluir) {
                request.setAttribute("msgSucesso", "Usuário excluido com sucesso.");
                request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
                url = "/sucesso.jsp";
            } else {
                url = "/erro.jsp";
                request.setAttribute("msgErro", "Não foi possivel excluir o usuário.");
                request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }

        if (action.equalsIgnoreCase("listarUsuario")) {
            forward = "usuario.jsp";
            List<Usuario> lista = UsuarioDAO.listarUsuario();
            request.setAttribute("usuarios", lista);
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("alterar")) {
            String codigo = request.getParameter("codigo");
            
            String nomeUsuario = request.getParameter("NomeUsuario");
            String login = request.getParameter("Login");
            String senha = request.getParameter("Senha");
            String email = request.getParameter("EmailUsuario");
            String perfil = request.getParameter("Perfil");
            
            Usuario usuario = new Usuario(nomeUsuario, login, senha, email, perfil);

            boolean cadastrou = UsuarioDAO.alterarUsuario(usuario, Integer.parseInt(codigo));
            PrintWriter out = response.getWriter();

            String url = "";
            if (cadastrou) {
                request.setAttribute("msgSucesso", "Usuário alterado com sucesso.");
                request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
                url = "/sucesso.jsp";
            } else {
                url = "/erro.jsp";
                request.setAttribute("msgErro", "Não foi possivel alterar o usuário.");
                request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } else if (action.equalsIgnoreCase("")) {

            //String codigo = request.getParameter("codigo");
            String nomeUsuario = request.getParameter("NomeUsuario");
            String login = request.getParameter("Login");
            String senha = request.getParameter("Senha");
            String email = request.getParameter("EmailUsuario");
            String perfil = request.getParameter("Perfil");

            Usuario usuario = new Usuario(nomeUsuario, login, senha, email, perfil);

            boolean cadastrou = UsuarioDAO.cadastrarUsuario(usuario);
            PrintWriter out = response.getWriter();

            String url = "";
            if (cadastrou) {
                request.setAttribute("msgSucesso", "Usuário cadastrado com sucesso.");
                request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
                url = "/sucesso.jsp";
            } else {
                url = "/erro.jsp";
                request.setAttribute("msgErro", "Não foi possivel cadasrar o usuário.");
                request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
