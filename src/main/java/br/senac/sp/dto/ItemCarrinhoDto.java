/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dto;

import br.senac.sp.entidade.ProdutoAbstract;

/**
 *
 * @author lucas
 */
public class ItemCarrinhoDto extends ProdutoAbstract{
    private int idItemCarrinho;
    private double valorTotalItem;

    public ItemCarrinhoDto(int idItemCarrinho, int idProduto, String nome, String marca, int quantidade, double preco) {
        this.idItemCarrinho = idItemCarrinho;
        this.codigo = idProduto;
        this.nomeProduto = nome;
        this.marca = marca;
        this.quantidade = quantidade;
        this.preco = preco;
        this.valorTotalItem = this.preco * this.quantidade;
    }
    
    public ItemCarrinhoDto() {

    }
    
    public int getIdItemCarrinho() {
        return idItemCarrinho;
    }

    public void setIdItemCarrinho(int idItemCarrinho) {
        this.idItemCarrinho = idItemCarrinho;
    }

    public int getIdProduto() {
        return codigo;
    }

    public void setIdProduto(int idProduto) {
        this.codigo = idProduto;
    }

    public double getValorTotalItem() {
        return valorTotalItem;
    }

    public void setValorTotalItem(double valorTotalItem) {
        this.valorTotalItem = valorTotalItem;
    }

    @Override
    public String toString() {
        return "ItemCarrinhoDto{" + "idItemCarrinho=" + idItemCarrinho + ", idProduto=" + codigo + ", nome=" + nomeProduto + ", marca=" + marca + ", quantidade=" + quantidade + ", preco=" + preco + ", valorTotalItem=" + valorTotalItem + '}';
    }
    
    
}
