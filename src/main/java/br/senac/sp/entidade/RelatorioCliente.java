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
public class RelatorioCliente extends Relatorio {

    protected String sobrenome;

    public RelatorioCliente(int id, String nome, String sobrenome, double total) {
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.total = total;
    }

    public RelatorioCliente() {

    }

    @Override
    public void setTotal(double total) {
        if (total >= 0) {
            this.total = total;
        }

    }

    @Override
    public void setId(int id) {
        if (id > 0) {
            this.id = id;
        }
    }

    @Override
    public void setNome(String nome) {
        if(nome != null){
            this.nome = nome;
        }
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    @Override
    public String toString() {
        return "Relatorio{" + "id = " + id + ", nome = " + nome + ", sobrenome = " + sobrenome + ", total=" + total + "}";
    }
}
