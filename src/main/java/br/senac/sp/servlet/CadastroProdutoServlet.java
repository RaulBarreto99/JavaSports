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
        ProdutoDao produtoDao = new ProdutoDao();
        String forward = "";
        forward = "/protegido/funcionario/produto.jsp";

        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("excluir")) {
            forward = "/protegido/funcionario/produto.jsp";
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            boolean excluir = produtoDao.delete(codigo);
            String url = "";
            if (excluir) {
                request.setAttribute("msgSucesso", "Produto excluido com sucesso.");
                request.setAttribute("forward", "CadastroProdutoServlet?action=listarProduto");
                url = "/protegido/sucesso.jsp";
            } else {
                url = "/protegido/erro.jsp";
                request.setAttribute("msgErro", "Não foi possivel excluir o produto.");
                request.setAttribute("forward", "CadastroProdutoServlet?action=listarProduto");
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }

        if (action.equalsIgnoreCase("listarProduto")) {
            forward = "/protegido/funcionario/produto.jsp";
            List<Object> lista = produtoDao.getAll();
            request.setAttribute("produtos", lista);
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        ProdutoDao produtoDao = new ProdutoDao();

        if (action.equalsIgnoreCase("alterar")) {
            String codigo = request.getParameter("codigo");
            
            String nomeProduto = request.getParameter("nomeProduto");
            String marca = request.getParameter("marca");
            String preco = request.getParameter("preco");
            String quantidade = request.getParameter("quantidade");
            
            Produto produto = new Produto(Integer.parseInt(codigo), nomeProduto, marca, Double.parseDouble(preco), Integer.parseInt(quantidade));

            boolean cadastrou = produtoDao.update(produto);
            PrintWriter out = response.getWriter();

            String url = "";
            if (cadastrou) {
                request.setAttribute("msgSucesso", "Produto alterado com sucesso.");
                request.setAttribute("forward", "CadastroProdutoServlet?action=listarProduto");
                url = "/protegido/sucesso.jsp";
            } else {
                url = "/protegido/erro.jsp";
                request.setAttribute("msgErro", "Não foi possivel alterar o produto.");
                request.setAttribute("forward", "CadastroProdutoServlet?action=listarProduto");
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } else if (action.equalsIgnoreCase("")) {

            //String codigo = request.getParameter("codigo");
            String nomeProduto = request.getParameter("nomeProduto");
            String marca = request.getParameter("marca");
            String preco = request.getParameter("preco");
            String quantidade = request.getParameter("quantidade");

            Produto produto = new Produto(nomeProduto, marca, Double.parseDouble(preco), Integer.parseInt(quantidade));

            boolean cadastrou = produtoDao.insert(produto);
            PrintWriter out = response.getWriter();

            String url = "";
            if (cadastrou) {
                request.setAttribute("msgSucesso", "Produto cadastrado com sucesso.");
                request.setAttribute("forward", "CadastroProdutoServlet?action=listarProduto");
                url = "/protegido/sucesso.jsp";
            } else {
                url = "/protegido/erro.jsp";
                request.setAttribute("msgErro", "Não foi possivel cadasrar o produto.");
                request.setAttribute("forward", "CadastroProdutoServlet?action=listarProduto");
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
