/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.UsuarioSistemaDAO;
import br.senac.sp.entidade.Usuario;
import br.senac.sp.utils.PerfilEnum;
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
            forward = "/protegido/admin/usuario.jsp";
            int codigo = Integer.parseInt(request.getParameter("id"));
            boolean excluir = UsuarioSistemaDAO.excluirUsuario(codigo);
            String url = "";
            if (excluir) {
                request.setAttribute("msgSucesso", "Usuário excluido com sucesso.");
                request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
                url = "/protegido/sucesso.jsp";
            } else {
                url = "/protegido/erro.jsp";
                request.setAttribute("msgErro", "Não foi possivel excluir o usuário.");
                request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }

        if (action.equalsIgnoreCase("listarUsuario")) {
            forward = "/protegido/funcionario/gerente/admin/usuario.jsp";
            List<Usuario> lista = UsuarioSistemaDAO.listarUsuario();

            String[] perfis = {"Funcionario", "Gerente", "Admin"};

            request.setAttribute("perfis", perfis);
            request.setAttribute("usuarios", lista);
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        //String codigo = request.getParameter("codigo");
        String perfil = request.getParameter("perfil").toLowerCase();
        String login = request.getParameter("Login");
        String nome = request.getParameter("Nome");
        String senha = request.getParameter("Senha");

        Usuario usuario = new Usuario(nome, login, senha, perfil
        );

        boolean cadastrou = UsuarioSistemaDAO.cadastrarUsuario(usuario);
        PrintWriter out = response.getWriter();

        String url = "";
        if (cadastrou) {
            request.setAttribute("msgSucesso", "Usuário cadastrado com sucesso.");
            request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
            url = "/protegido/sucesso.jsp";
        } else {
            url = "/protegido/erro.jsp";
            request.setAttribute("msgErro", "Não foi possivel cadasrar o usuário.");
            request.setAttribute("forward", "CadastroUsuarioServlet?action=listarUsuario");
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
