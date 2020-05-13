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
public class RelatorioFilial {
    private int id;
    private String nome;
    private double total;

    public RelatorioFilial(int id, String nome, double total) {
        this.id = id;
        this.nome = nome;
        this.total = total;
    }
    
    public RelatorioFilial(){
        
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

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
}
