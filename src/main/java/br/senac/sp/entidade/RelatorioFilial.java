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
public class RelatorioFilial extends Relatorio {

    public RelatorioFilial(int id, String nome, double total) {
        this.id = id;
        this.nome = nome;
        this.total = total;
    }

    public RelatorioFilial() {

    }

    @Override
    public void setId(int id) {
        if (id > 0) {
            this.id = id;
        }

    }

    @Override
    public void setTotal(double total) {
        if (total >= 0) {
            this.total = total;
        }
    }

}
