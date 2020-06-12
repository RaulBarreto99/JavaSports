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
public class Estoque extends ProdutoAbstract {
   
    
    
    public Estoque(String produto, String marca, double preco, int quantidade){
        
        this.nomeProduto = produto;
        this.marca =  produto;
        this.preco = preco;
        this.quantidade= quantidade;
    }

    public Estoque() {
        
    }
    
}
