/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.VendasDao;
import br.senac.sp.dto.ItemCarrinhoDto;
import br.senac.sp.dto.VendaDetalhadaDto;
import br.senac.sp.entidade.Cliente;
import br.senac.sp.entidade.Filial;
import br.senac.sp.entidade.Produto;
import br.senac.sp.entidade.Venda;
import br.senac.sp.controller.VendasController;
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

    VendasController vendasController;

    public VendasServlet() {
        vendasController =  new VendasController();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward = "";

        String action = request.getParameter("action");

        try {
            if (action.equals("listarVendas")) {
                vendasController.listarVendas(request, response);
            } else if (action.equals("excluir")) {
                vendasController.removerItem(request, response);
            } else if (action.equals("salvarVenda")) {
                try {
                    vendasController.salvarVenda(request, response);
                } catch (ServletException ex) {
                    trataErro(request, response, ex);
                }

            } else if (action.equals("carregarAtributosVenda")) {
                vendasController.carregarAtributosVenda(request, response);
            }
        } catch (Exception e) {
            vendasController.encaminhaCadastrarVendas(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        
        try {
            String action = request.getParameter("action");

            if (action.equals("adicionarAoCarrinho")) {
                vendasController.adicionarAoCarrinho(request, response);
            } else if (action.equals("detalharVenda")) {
                vendasController.detalharVenda(request, response);
            }else if(action.equals("salvarCampos")){
                vendasController.salvarCampos(request, response);
            }

        } catch (Exception ex) {
            trataErro(request, response, ex);
        }
    }

    private void trataErro(HttpServletRequest request, HttpServletResponse response, Exception ex) {
        RequestDispatcher view = request.getRequestDispatcher("/protegido/erro.jsp");

        request.setAttribute("msgErro", ex.getMessage());
        request.setAttribute("forward", "VendasServlet?action=carregarAtributosVenda");

        Logger.getLogger(VendasServlet.class.getName()).log(Level.SEVERE, null, ex);

        try {
            view.forward(request, response);
            //Logger.getLogger(VendasServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex1) {
            Logger.getLogger(VendasServlet.class.getName()).log(Level.SEVERE, null, ex1);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
