/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.VendasDao;
import br.senac.sp.dto.ItemCarrinhoDto;
import br.senac.sp.dto.VendaDetalhadaDto;
import br.senac.sp.entidade.Produto;
import br.senac.sp.entidade.Venda;
import br.senac.sp.validate.VendaValidate;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            request.setAttribute("idFilial", request.getParameter("idFilial"));
            request.setAttribute("idCliente", request.getParameter("idCliente"));
            request.setAttribute("carrinho", this.carrinho);
            request.setAttribute("produtos", this.produtos);
            RequestDispatcher view = request.getRequestDispatcher(forward);
            view.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        VendasDao dao = new VendasDao();
        try {
            String action = request.getParameter("action");

            if (action.equals("adicionarAoCarrinho")) {
                adicionarAoCarrinho(request, response);

            } else if (action.equals("excluir")) {

                removerItem(request, response);

            } else if (action.equals("salvarVenda")) {
                salvarVenda(request, response);

            } else if (action.equals("detalharVenda")) {
                int id = Integer.parseInt(request.getParameter("id"));

                VendaDetalhadaDto vendaDetalhada = dao.detalharVenda(id);

                request.setAttribute("vendaDetalhada", vendaDetalhada);
                request.setAttribute("carrinho", vendaDetalhada.getCarrinho());

                RequestDispatcher view = request.getRequestDispatcher("/detalharVenda.jsp");
                view.forward(request, response);
            }
        } catch (Exception ex) {
            RequestDispatcher view = request.getRequestDispatcher("/erro.jsp");

            request.setAttribute("msgErro", ex.getMessage());
            request.setAttribute("forward", "/xNexus-java-sports/VendasServlet");

            Logger.getLogger(VendasServlet.class.getName()).log(Level.SEVERE, null, ex);

            try {
                view.forward(request, response);
                //Logger.getLogger(VendasServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (Exception ex1) {
                Logger.getLogger(VendasServlet.class.getName()).log(Level.SEVERE, null, ex1);
            }
        } finally {

        }

    }

    private void removerItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        ItemCarrinhoDto produtoRemovido = this.carrinho.get(id);
        this.carrinho.remove(id);

        this.valorTotal -= produtoRemovido.getValorTotalItem();

        request.setAttribute("valorTotal", this.valorTotal);

        request.setAttribute("carrinho", this.carrinho);
        RequestDispatcher view = request.getRequestDispatcher("/cadastrarVenda.jsp");
        view.include(request, response);
    }

    private void adicionarAoCarrinho(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.err.println(request.getParameter("idProduto"));
        int id = Integer.parseInt(request.getParameter("idProduto"));
        int quantidade = Integer.parseInt(request.getParameter("quantidadeVendida"));

        String retornoValidacao = VendaValidate.validaCarrinho(quantidade, id);
        if (retornoValidacao.equals("")) {
            this.carrinho.add(buscaProduto(id, quantidade));

            this.idCliente = Integer.parseInt(request.getParameter("idCliente"));
            this.idFilial = Integer.parseInt(request.getParameter("idFilial"));

            request.setAttribute("idFilial", request.getParameter("idFilial"));
            request.setAttribute("idCliente", request.getParameter("idCliente"));
            request.setAttribute("produtos", this.produtos);
            request.setAttribute("valorTotal", this.valorTotal);
            request.setAttribute("carrinho", this.carrinho);

            RequestDispatcher view = request.getRequestDispatcher("/cadastrarVenda.jsp");
            view.forward(request, response);
        } else {
            throw new ServletException(retornoValidacao);
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

        if (retorno) {
            zerarVariaveis();

            request.setAttribute("msgSucesso", "Venda Cadastrada com Sucesso");
            request.setAttribute("forward", "/xNexus-java-sports/VendasServlet?action=listarVendas");
            RequestDispatcher view = request.getRequestDispatcher("/sucesso.jsp");
            view.forward(request, response);
        } else {

            RequestDispatcher view = request.getRequestDispatcher("/erro.jsp");

            request.setAttribute("msgErro", "Não foi possivel Cadastrar a nova venda.");
            request.setAttribute("forward", "/xNexus-java-sports/cadastrarVenda.jsp");
            view.include(request, response);
        }

    }

    private void zerarVariaveis() {
        this.carrinho = new ArrayList<>();
        this.valorTotal = 0.0;

        this.idCliente = 0;
        this.idFilial = 0;

        this.idIterativo = 0;
    }

    private ItemCarrinhoDto buscaProduto(int idProduto, int quantidade) throws ServletException {
        ItemCarrinhoDto itemCarrinho = null;
        
        for (int i = 0; i < produtos.size(); i++) {
            if (produtos.get(i).getCodigo() == idProduto) {
                this.valorTotal += (quantidade * produtos.get(i).getPreco());
                
                Produto produtoAtual = produtos.get(i);
                
                int novaQuantidade = produtoAtual.getQuantidade() - quantidade;
                
                if(novaQuantidade >= 0){
                produtoAtual.setQuantidade(novaQuantidade);
                produtos.set(i, produtoAtual);
                this.idIterativo++;
                itemCarrinho = new ItemCarrinhoDto(this.idIterativo, idProduto, produtoAtual.getNomeProduto(), produtoAtual.getMarca(), quantidade, produtoAtual.getPreco());
                }else{
                    throw new ServletException("A Quantidade não Pode Ser Maior que a Disponivel no Estoque.");
                }
                
                
            }
        }
        for (Produto produto : this.produtos) {

            

        }

        return itemCarrinho;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
