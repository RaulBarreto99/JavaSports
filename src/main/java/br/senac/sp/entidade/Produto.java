package br.senac.sp.entidade;

/**
 *
 * @author lucas
 */
public class Produto extends ProdutoAbstract {

    public Produto(String nomeProduto, String marca, double preco, int quantidade) {
        this.nomeProduto = nomeProduto;
        this.marca = marca;
        this.preco = preco;
        this.quantidade = quantidade;
    }
    
    public Produto(int codigo, String nomeProduto, String marca, double preco, int quantidade) {
        this.codigo = codigo;
        this.nomeProduto = nomeProduto;
        this.marca = marca;
        this.preco = preco;
        this.quantidade = quantidade;
    }

    public Produto() {

    }
}
