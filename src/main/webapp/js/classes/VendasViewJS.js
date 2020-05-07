class VendasViewJS{

_templateForm(){
return `<div class="single-product-tab-area mg-b-30">
                            <!-- Single pro tab review Start-->
                            <div class="single-pro-review-area">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-tab-pro-inner">
                                                <div id="myTabContent" class="tab-content custom-product-edit">
                                                    <div class="product-tab-list tab-pane fade active in" id="description">
                                                <form action="">        
                                                <div class="row">
        <ul id="myTab3" class="tab-review-design">
                                                    <li class="active"><a href="#description"><i class="icon nalika-edit" aria-hidden="true"></i> Informações Venda</a></li>

                                                </ul>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <div class="review-content-section">
        
        
                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-user" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" name="idFilial" placeholder="Id da filial">
                                                                    </div>

                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" name="idCliente" placeholder="Id do cliente">
                                                                    </div>
                                                                   
                                                                </div>

                                                            </div>
                                                        </div>


                                                    </div>


                                                    <br>

                                                </div>
        
                                                <div class="row">
        <ul id="myTab3" class="tab-review-design">
                                                    <li class="active"><a href="#description"><i class="icon nalika-edit" aria-hidden="true"></i> Informações Produto</a></li>

                                                </ul>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <div class="review-content-section">
        
                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" name="idProduto" placeholder="Id da produto">
                                                                    </div>

                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-favorites" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" name="quantidadeVendida" placeholder="Quantidade">
                                                                    </div>
                                                                   
                                                                </div>

                                                            </div>
                                                        </div>
        
        <br>

                                                    <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="text-center custom-pro-edt-ds">
                                                            <button type="button" class="btn btn-ctl-bt waves-effect waves-light m-r-10" onclick="vendasViewJS.adicionarCarrinho()">Adicionar no carrinho 
                                                            </button>
                                                            <button type="button" class="btn btn-ctl-bt waves-effect waves-light">Limpar
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                    </div>

                                                </div>
                                                
                                            </form>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>


                        <div class="product-status mg-b-30">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="product-status-wrap">
                                            <h4>Lista de produtos adicionado no carrinho </h4>

                                            <table>
        
                                                <thead>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Nome do produto</th>
                                                        <th>Preço</th>
                                                        <th>Quantidade do produto</th>
                                                        <th>Ação</th>


                                                    </tr>
                                                </thead>
        
                                                <tbody>
                                                    <tr>

                                                        <td>1</td>
                                                        <td>Camisa</td>
                                                        <td>R$ 1.500</td>
                                                        <td>2</td>

                                                        <td>

                                                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="text-center custom-pro-edt-ds">
                                                        <button type="button" class="btn btn-ctl-bt waves-effect waves-light m-r-10">Salvar Venda
                                                        </button>
                                                        <button type="button" class="btn btn-ctl-bt waves-effect waves-light">Limpar
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>`;
        }

    updateForm(produtos){
        console.log(produtos);
        let workspace = document.getElementById('workspace');
        workspace.innerHTML = this._templateForm();
    }

    adicionarCarrinho(){
        let inputIdProduto = document.getElementByName("");
    }
}
