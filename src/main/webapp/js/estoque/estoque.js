armazenaValor();
async function armazenaValor() {
    var estoqueProduto = document.querySelector('#estoqueProduto tbody');
    var produtos = await carregaProduto();
    var jsonProdutos = JSON.parse(produtos);
    html = '';
    for (var elemento of jsonProdutos) {
        html += `<tr>`;
        html += `<td>${elemento.idProduto}</td>`;
        html += `<td>${elemento.nomeProduto}</td>`;
        html += `<td>R$ ${((elemento.precoProduto).toFixed(2)).toString().replace('.', ',')}</td>`;
        html += `<td>${elemento.quantidadeProduto}</td>`;
        html += `</tr>`
    }

    estoqueProduto.innerHTML = html;
}

async function carregaProduto() {
    try {
        var listaProdutos = await fetch('http://localhost:8080/xNexus-java-sports/EstoqueProdutoServelet');
        return listaProdutos.text();

    } catch (error) {
        console.log('Houve um erro');
    }

}


