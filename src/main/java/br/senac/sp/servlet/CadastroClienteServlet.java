package br.senac.sp.servlet;

import br.senac.sp.dao.ClienteDAO;
import br.senac.sp.entidade.Cliente;
import br.senac.sp.entidade.Venda;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CadastroClienteServlet", urlPatterns = {"/CadastroClienteServlet"})
public class CadastroClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String forward = "";
        
        forward = "cliente.jsp";

        List<Cliente> lista = ClienteDAO.listarCliente();
        request.setAttribute("clientes", lista);

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String dataNascimento = request.getParameter("dataNascimento");
        String cpf = request.getParameter("cpf");
        String telefone = request.getParameter("telefone");
        String sexo = request.getParameter("sexo");

        Cliente cliente = new Cliente();

       
        cliente.setNome(nome);
        cliente.setSobrenome(sobrenome);
        cliente.setDataNascimento(dataNascimento);
        cliente.setCpf(cpf);
        cliente.setTelefone(telefone);
        cliente.setSexo(sexo);

       
        boolean cadastrou = ClienteDAO.cadastrarCliente(cliente);
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

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
