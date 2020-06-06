/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.controller;

import br.senac.sp.dao.VendasDao;
import br.senac.sp.dto.ItemCarrinhoDto;
import br.senac.sp.dto.VendaDetalhadaDto;
import br.senac.sp.entidade.Cliente;
import br.senac.sp.entidade.Filial;
import br.senac.sp.entidade.Produto;
import br.senac.sp.entidade.Venda;
import br.senac.sp.servlet.VendasServlet;
import br.senac.sp.validate.VendaValidate;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class VendasController {

    private List<ItemCarrinhoDto> carrinho;
    private List<Produto> produtos;
    private List<Cliente> clientes;
    private List<Filial> filiais;
    private double valorTotal = 0;
    private int idIterativo;
    private String cpfCliente;
    private int idFilial;
    private VendasDao dao;

    public VendasController() {
        dao = new VendasDao();
        produtos = dao.getProdutos();
        clientes = dao.getClientes();
        filiais = dao.getFiliais();
        this.carrinho = new ArrayList<ItemCarrinhoDto>();
        this.valorTotal = 0;
        this.idIterativo = -1;
    }

    public void removerItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            int id = Integer.parseInt(request.getParameter("id"));

            int index = -1;

            for (int i = 0; i < this.carrinho.size(); i++) {
                if (carrinho.get(i).getIdItemCarrinho() == id) {
                    index = i;
                }
            }

            ItemCarrinhoDto produtoRemovido = this.carrinho.get(index);

            this.carrinho.remove(index);

            this.valorTotal -= produtoRemovido.getValorTotalItem();

            request.setAttribute("idFilial", this.idFilial);
            request.setAttribute("idCliente", this.cpfCliente);
            request.setAttribute("produtos", this.produtos);
            request.setAttribute("valorTotal", this.valorTotal);
            request.setAttribute("carrinho", this.carrinho);

            VendaDetalhadaDto v = new VendaDetalhadaDto();
            v.setCarrinho(this.carrinho);

            RequestDispatcher view = request.getRequestDispatcher("/protegido/funcionario/cadastrarVenda.jsp");
            view.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void adicionarAoCarrinho(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = 0;
        int quantidade = 0;

        produtos = dao.getProdutos();
        clientes = dao.getClientes();

        id = Integer.parseInt(request.getParameter("idProduto"));
        quantidade = Integer.parseInt(request.getParameter("quantidadeVendida"));

        String retornoValidacao = VendaValidate.validaCarrinho(quantidade, id);
        if (retornoValidacao.equals("")) {
            this.carrinho.add(buscaProduto(id, quantidade));

            this.cpfCliente = request.getParameter("cpfCliente");
            this.idFilial = Integer.parseInt(request.getParameter("idFilial"));

            request.setAttribute("idFilial", request.getParameter("idFilial"));
            request.setAttribute("cpfCliente", request.getParameter("cpfCliente"));
            request.setAttribute("produtos", this.produtos);
            request.setAttribute("valorTotal", this.valorTotal);
            request.setAttribute("carrinho", this.carrinho);

            RequestDispatcher view = request.getRequestDispatcher("/protegido/funcionario/cadastrarVenda.jsp");
            view.forward(request, response);
        } else {
            throw new ServletException(retornoValidacao);
        }

    }

    public void salvarVenda(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Venda venda = new Venda();

        if (this.carrinho.isEmpty()) {
            throw new ServletException("O carrinho não pode estar vazio ao finalizar a venda.");
        }

        venda.setIdCliente(buscaCliente(this.cpfCliente));
        venda.setIdFilial(buscaFilial(this.idFilial));
        venda.setProdutosVendidos(this.carrinho);
        venda.setValorTotal(this.valorTotal);

        boolean retorno = dao.salvarVenda(venda);

        if (retorno) {
            zerarVariaveis();

            request.setAttribute("msgSucesso", "Venda Cadastrada com Sucesso");
            request.setAttribute("forward", "VendasServlet?action=listarVendas");
            RequestDispatcher view = request.getRequestDispatcher("/protegido/sucesso.jsp");
            view.forward(request, response);
        } else {

            RequestDispatcher view = request.getRequestDispatcher("/protegido/erro.jsp");

            request.setAttribute("msgErro", "Não foi possivel Cadastrar a nova venda.");
            request.setAttribute("forward", "VendasServlet?action=carregarAtributosVenda");
            view.forward(request, response);
        }

    }

    private void zerarVariaveis() {
        this.carrinho = new ArrayList<>();
        this.valorTotal = 0.0;

        this.cpfCliente = "";
        this.idFilial = 0;

        this.idIterativo = 0;
    }

    public ItemCarrinhoDto buscaProduto(int idProduto, int quantidade) throws ServletException {
        ItemCarrinhoDto itemCarrinho = null;

        for (int i = 0; i < produtos.size(); i++) {
            if (produtos.get(i).getCodigo() == idProduto) {

                Produto produtoAtual = produtos.get(i);

                int novaQuantidade = produtoAtual.getQuantidade() - quantidade;

                if (novaQuantidade >= 0) {
                    this.valorTotal += (quantidade * produtos.get(i).getPreco());

                    produtoAtual.setQuantidade(novaQuantidade);
                    produtos.set(i, produtoAtual);
                    this.idIterativo++;
                    itemCarrinho = new ItemCarrinhoDto(this.idIterativo, idProduto, produtoAtual.getNomeProduto(), produtoAtual.getMarca(), quantidade, produtoAtual.getPreco());
                } else {
                    throw new ServletException("A Quantidade não Pode Ser Maior que a Disponivel no Estoque.");
                }

            }
        }

        return itemCarrinho;
    }

    public void carregarAtributosVenda(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward = "";

        produtos = dao.getProdutos();
        clientes = dao.getClientes();
        forward = "/protegido/funcionario/cadastrarVenda.jsp";
        request.setAttribute("valorTotal", this.valorTotal);
        request.setAttribute("idFilial", this.idFilial);
        request.setAttribute("cpfCliente", this.cpfCliente);
        request.setAttribute("carrinho", this.carrinho);
        request.setAttribute("produtos", this.produtos);
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    public void detalharVenda(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VendasDao dao = new VendasDao();
        int id = Integer.parseInt(request.getParameter("id"));

        VendaDetalhadaDto vendaDetalhada = dao.detalharVenda(id);

        request.setAttribute("vendaDetalhada", vendaDetalhada);
        request.setAttribute("carrinho", vendaDetalhada.getCarrinho());

        RequestDispatcher view = request.getRequestDispatcher("/protegido/funcionario/detalharVenda.jsp");
        view.forward(request, response);
    }

    public void listarVendas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String forward = "/protegido/funcionario/listarVendas.jsp";

        List<Venda> vendas = dao.getVendas();

        request.setAttribute("vendas", vendas);
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    private int buscaCliente(String cpf) throws ServletException {

        for (Cliente cliente : clientes) {
            if (cliente.getCpf().equals(cpf)) {
                return cliente.getId();
            }
        }

        throw new ServletException("Cliente inexistente.");
    }

    private int buscaFilial(int id) throws ServletException {

        for (Filial filial : filiais) {
            if (filial.getId() == id) {
                return filial.getId();
            }
        }

        throw new ServletException("Filial inexistente.");
    }

    public void salvarCampos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        idFilial = Integer.parseInt(request.getParameter("idFilial"));
        cpfCliente = request.getParameter("cpfCliente");
    }
    
    public void encaminhaCadastrarVendas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward = "/protegido/funcionario/cadastrarVenda.jsp";
        produtos = dao.getProdutos();
        clientes = dao.getClientes();
        
        carrinho = new ArrayList<ItemCarrinhoDto>();
        
        
        request.setAttribute("valorTotal", 0.0);
        request.setAttribute("idFilial", request.getParameter("idFilial"));
        request.setAttribute("cpfCliente", request.getParameter("cpfCliente"));
        request.setAttribute("carrinho", carrinho);
        request.setAttribute("produtos", this.produtos);
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }
}
