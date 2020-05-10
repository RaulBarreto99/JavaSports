/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.VendasDao;
import br.senac.sp.entidade.ItemCarrinhoDto;
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

    private List<ItemCarrinhoDto> carrinho;
    private List<Produto> produtos = new ArrayList<Produto>();
    private double valorTotal = 0;
    private int idIterativo;
    private int idCliente;
    private int idFilial;

    public VendasServlet() {
        VendasDao dao = new VendasDao();
        produtos = dao.getProdutos();
        this.carrinho = new ArrayList<ItemCarrinhoDto>();
        this.valorTotal = 0;
        this.idIterativo = -1;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VendasDao dao = new VendasDao();
        String forward = "";

        String action = request.getParameter("action");

        try {
            if (action.equals("listarVendas")) {
                forward = "/listarVendas.jsp";

                List<Venda> vendas = dao.getVendas();

                request.setAttribute("vendas", vendas);
                RequestDispatcher view = request.getRequestDispatcher(forward);
                view.forward(request, response);
            }
        } catch (Exception e) {
            forward = "/cadastrarVenda.jsp";
            request.setAttribute("valorTotal", 0.0);
            request.setAttribute("produtos", this.produtos);
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action.equals("adicionarAoCarrinho")) {
            int id = Integer.parseInt(request.getParameter("idProduto"));
            int quantidade = Integer.parseInt(request.getParameter("quantidadeVendida"));

            
            for (Produto produto : this.produtos) {

                if (produto.getCodigo() == id) {
                    this.valorTotal += (quantidade * produto.getPreco());
                    this.idIterativo++;
                    ItemCarrinhoDto produtoCarrinho = new ItemCarrinhoDto(this.idIterativo, id, produto.getNomeProduto(), produto.getMarca(), quantidade, produto.getPreco());
                    this.carrinho.add(produtoCarrinho);
                }

            }

            this.idCliente = Integer.parseInt(request.getParameter("idCliente"));
            this.idFilial = Integer.parseInt(request.getParameter("idFilial"));

            request.setAttribute("valorTotal", this.valorTotal);
            request.setAttribute("carrinho", this.carrinho);
            
            System.out.println(carrinho.toString()); 
           
            RequestDispatcher view = request.getRequestDispatcher("/cadastrarVenda.jsp");
            view.forward(request, response);
        } else if (action.equals("excluir")) {
            int id = Integer.parseInt(request.getParameter("id"));

            ItemCarrinhoDto produtoRemovido = this.carrinho.get(id);
            this.carrinho.remove(id);

            this.valorTotal -= produtoRemovido.getValorTotalItem();

            request.setAttribute("valorTotal", this.valorTotal);

            request.setAttribute("carrinho", this.carrinho);
            RequestDispatcher view = request.getRequestDispatcher("/cadastrarVenda.jsp");
            view.forward(request, response);
        } else if (action.equals("salvarVenda")) {
            salvarVenda(request, response);

        }

    }

    private void salvarVenda(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VendasDao dao = new VendasDao();

        Venda venda = new Venda();

        venda.setIdCliente(this.idCliente);
        venda.setIdFilial(this.idFilial);
        venda.setProdutosVendidos(this.carrinho);
        venda.setValorTotal(this.valorTotal);

        boolean retorno = dao.salvarVenda(venda);

        RequestDispatcher view = request.getRequestDispatcher("/VendasServlet?action=listarVendas");
        view.forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
