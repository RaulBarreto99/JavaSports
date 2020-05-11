/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.ProdutoDao;
import br.senac.sp.entidade.Produto;
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
@WebServlet(name = "CadastroProdutoServlet", urlPatterns = {"/CadastroProdutoServlet"})
public class CadastroProdutoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String forward = "";
        forward = "produto.jsp";

        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("excluir")) {
            forward = "/produto.jsp";
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            boolean excliu = ProdutoDao.excluirProduto(codigo);
            String url = "";
            if (excliu) {
                url = "/sucesso.jsp";
            } else {
                url = "/erro.jsp";
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }

        if (action.equalsIgnoreCase("listarProduto")) {
            forward = "produto.jsp";
            List<Produto> lista = ProdutoDao.listarProduto();
            request.setAttribute("produtos", lista);
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
            System.out.println("SDDCBDUCYKBWUICBWEICUBWENC: "+codigo);
            String nomeProduto = request.getParameter("nomeProduto");
            String marca = request.getParameter("marca");
            String preco = request.getParameter("preco");
            String quantidade = request.getParameter("quantidade");
            
            Produto produto = new Produto(nomeProduto, marca, Long.parseLong(preco), Integer.parseInt(quantidade));

            boolean cadastrou = ProdutoDao.alterarProduto(produto, Integer.parseInt(codigo));
            PrintWriter out = response.getWriter();

            String url = "";
            if (cadastrou) {
                url = "/sucesso.jsp";
            } else {
                url = "/erro.jsp";
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } else if (action.equalsIgnoreCase("")) {

            //String codigo = request.getParameter("codigo");
            String nomeProduto = request.getParameter("nomeProduto");
            String marca = request.getParameter("marca");
            String preco = request.getParameter("preco");
            String quantidade = request.getParameter("quantidade");

            Produto produto = new Produto(nomeProduto, marca, Long.parseLong(preco), Integer.parseInt(quantidade));

            boolean cadastrou = ProdutoDao.cadastrarProduto(produto);
            PrintWriter out = response.getWriter();

            String url = "";
            if (cadastrou) {
                url = "/sucesso.jsp";
            } else {
                url = "/erro.jsp";
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
