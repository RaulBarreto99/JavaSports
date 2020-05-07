/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.VendasDao;
import br.senac.sp.entidade.Produto;
import br.senac.sp.entidade.Venda;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lucas
 */
@WebServlet(name = "VendasServlet", urlPatterns = {"/VendasServlet"})
public class VendasServlet extends HttpServlet {

    private List<Produto> carrinho = new ArrayList<Produto>();
    private List<Produto> produtos = new ArrayList<Produto>();

    public VendasServlet() {
        VendasDao dao = new VendasDao();
        produtos = dao.getProdutos();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String forward = "";

        String action = request.getParameter("action");

        try {
            if (action.equals("listarVendas")) {
                forward = "/listarVendas.jsp";

                Venda venda = new Venda();

                Produto produto = new Produto(1, "Arroz", "Camil", 10, 100);

                System.out.println(action);
                venda.setId(1);
                venda.setIdCliente(1);
                venda.setIdFilial(1);
                venda.setValorTotal(100.0);
                venda.setDataVenda(new Date());
                venda.addProduto(produto);
                venda.addProduto(produto);
                venda.addProduto(produto);

                request.setAttribute("vendas", Arrays.asList(venda, venda, venda));
                request.setAttribute("produtos", Arrays.asList(produto, produto, produto));

                RequestDispatcher view = request.getRequestDispatcher(forward);
                view.forward(request, response);
            }
        } catch (Exception e) {
            forward = "/cadastrarVenda.jsp";

            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        int id = Integer.parseInt(request.getParameter("idProduto"));
        int quantidade = Integer.parseInt(request.getParameter("quantidadeVendida"));

        for (Produto produto : this.produtos) {

            if (produto.getCodigo() == id) {
                Produto produtoCarrinho = new Produto(id, produto.getNomeProduto(), produto.getMarca(), produto.getPreco(), quantidade);
                this.carrinho.add(produtoCarrinho);
            }

        }
        request.setAttribute("carrinho", this.carrinho);
        RequestDispatcher view = request.getRequestDispatcher("/cadastrarVenda.jsp");
        view.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
