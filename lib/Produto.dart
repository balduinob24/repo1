// TODO Implement this library.
import 'package:flutter/material.dart';

class Produto extends StatelessWidget{

  var imagem;
  var nome;
  var quantidade;
  var preco;
  var observacao;

  Produto(this.imagem, this.nome, this.quantidade, this.preco, this.observacao);
  BuildContext context;

  @override
  Widget build(BuildContext _context){
    this.context = _context;

    //Adicionando margem dentro do carrinho
    return new Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 0.0),
      child: new Material(
        borderRadius: new BorderRadius.circular(6.0),
        elevation: 2.0,
        child: _getListTile(),
      ),

    );
  }

  Widget _getListTile(){

    // Foi adicionado dentro de Container para adicionar altura fixa.
    return new Container(
      height: 95.0,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new FadeInImage.assetNetwork(placeholder: '', image: imagem,fit: BoxFit.cover,width: 95.0,height: 95.0,),
          _getColumText(nome,preco,observacao),
        ],

      ),
    );

  }


  Widget _getColumText(_nome, _preco, _observacao){
    return new Expanded(
        child: new Container(
          margin: new EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getTitleWidget(nome),
              _getDateWidget(preco),
              _getDescriptionWidget(observacao)],

          ),

        )
    );
  }

  Widget _getTitleWidget(String curencyName){
    return new Text(
      curencyName,
      maxLines: 1,
      style: new TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _getDescriptionWidget(String _observacao){
    return new Container(
      margin: new EdgeInsets.only(top: 5.0),
      child: new Text(_observacao,maxLines: 2,),
    );
  }

  Widget _getDateWidget(String _preco){
    return new Text(_preco,
      style: new TextStyle(color: Colors.grey,fontSize: 10.0),);
  }
}

