/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.entidade;

/**
 *
 * @author oz500
 */
public class RelatorioCliente {
    
    private int id;
    private String nome;
    private String sobrenome;
    private double total;

    public RelatorioCliente(int id, String nome, String sobrenome, double total) {
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.total = total;
    }
    
    public RelatorioCliente(){
        
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }
    
}
