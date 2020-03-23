import 'package:flutter/material.dart';
import 'package:compraapp/main.dart';
import 'NewsApi.dart';
import 'Produto.dart';
import 'main.dart';

 class ListaProduto extends StatefulWidget{
  final state = new _ListaProdutoPageState();

  @override
  _ListaProdutoPageState createState() => state;

}

class _ListaProdutoPageState extends State<ListaProduto>{

  List _news = new List();
  var repository = new NewsApi();

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(),
      body: new Container(
        child: _getListViewWidget(),
      ),
    );

  }

  @override
  void initState() {

    loadProduto();

  }

  Widget _getListViewWidget(){

    var list = new ListView.builder(
        itemCount: _news.length,
        padding: new EdgeInsets.only(top: 5.0),
        itemBuilder: (context, index){
          return _news[index];
        }
    );

    return list;
  }

  loadProduto() async{

    List result = await repository.loadNews();

    setState(() {

      result.forEach((item) {

        var produdo = new Produto(
            item['url_img'],
            item['_nome'],
            item['_preco'],
            item['_quantidade'],
            item['_observacao']
        );


        _news.add(produdo);

      });

    });

  }


}
