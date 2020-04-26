class VendasViewJS{
    
    _templateForm(){
    return `
<div class="single-product-tab-area mg-b-30">
                            <!-- Single pro tab review Start-->
                            <div class="single-pro-review-area">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-tab-pro-inner">
                                                <ul id="myTab3" class="tab-review-design">
                                                    <li class="active"><a href="#description"><i class="icon nalika-edit" aria-hidden="true"></i> Cadastro</a></li>

                                                </ul>
                                                <div id="myTabContent" class="tab-content custom-product-edit">
                                                    <div class="product-tab-list tab-pane fade active in" id="description">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <div class="review-content-section">
                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-user" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="Id">
                                                                    </div>

                                                                    <select name="select" class="form-control pro-edt-select form-control-primary">
                                                                        <option value="opt1">Produtos Vendidos</option>
                                                                        <option value="opt2">2</option>
                                                                        <option value="opt3">3</option>
                                                                        <option value="opt4">4</option>
                                                                        <option value="opt5">5</option>
                                                                        <option value="opt6">6</option>
                                                                    </select>
                                                                    <br>
                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="Id do cliente">
                                                                    </div>
                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-edit" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="Id da filial">
                                                                    </div>

                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-favorites" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="Valor Total">
                                                                    </div>
                                                                    <div class="input-group mg-b-pro-edt">
                                                                        <span class="input-group-addon"><i class="icon nalika-favorites" aria-hidden="true"></i></span>
                                                                        <input type="text" class="form-control" placeholder="Data da Venda">
                                                                    </div>




                                                                </div>

                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <div class="review-content-section">


                                                                </div>
                                                            </div>
                                                        </div>


                                                    </div>


                                                    <br>

                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="text-center custom-pro-edt-ds">
                                                            <button type="button" class="btn btn-ctl-bt waves-effect waves-light m-r-10">Adicionar no carrinho 
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
                            </div>
                        </div>


                        <div class="product-status mg-b-30">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="product-status-wrap">
                                            <h4>Lista de produtos adicionado no carrinho </h4>

                                            <table>
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Nome do produto</th>
                                                    <th>Preço</th>
                                                    <th>Quantidade do produto</th>
                                                    <th>Ação</th>


                                                </tr>
                                                <tr>

                                                    <td>1</td>
                                                    <td>Camisa</td>
                                                    <td>R$ 1.500</td>
                                                    <td>2</td>

                                                    <td>

                                                        <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td>1</td>
                                                    <td>Blusa</td>
                                                    <td>R$ 1.500</td>
                                                    <td>50</td>

                                                    <td>

                                                        <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                                    </td>
                                                </tr>

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
                        </div>
        `;
    }
    
    updateForm(){
        let workspace = document.getElementById('workspace');
        workspace.innerHTML = this._templateForm();
    }
}
