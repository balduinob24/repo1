import 'package:flutter/material.dart';

import 'ListaProduto.dart';
//import 'widgets/home.dart';
import 'package:compraapp/Produto.dart';

void main() => runApp(new NewsApp());

class NewsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Carrinho',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ListaProduto(),
      /*home: Scaffold(
        appBar: AppBar(title: Text('Lista dos Produtos')),
        body: Column(
          children: <Widget>[
            Image.asset(
              'imagem/sapatos-solardrive-19.jpg',
            ),
            Text('Macoratti.net')
          ],
        ),
      ),*/
    );
  }

}