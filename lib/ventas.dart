import 'package:flutter/material.dart';

class Ventas extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text('Pagina de ventas'),),
      body: new Column(
        children: <Widget>[
          new Text('Estamos en ventas')
        ],
      )
    );
  }
}