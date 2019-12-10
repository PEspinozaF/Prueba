import 'package:flutter/material.dart';
import 'tarifa.dart';
import 'ventas.dart';

class NavegacionState extends State<Navegacion> {
  int _selectDrawerItem= 0;
  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0: return Tarifas();
      case 1: return Ventas();
    }
  }
  _onSelectItem(int pos){
    setState(() {
      _selectDrawerItem = pos;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Navegacion'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Pedro Espinoza'),
              accountEmail: Text('pep@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  'P',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text('Tarifas'),
              leading: Icon(Icons.art_track),
              onTap: (){
                Navigator.of(context).pop();
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: Text('Ventas'),
              leading: Icon(Icons.art_track),
              onTap: (){
                Navigator.of(context).pop();
                _onSelectItem(0);
              },
            )
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}

class Navegacion extends StatefulWidget{
 NavegacionState createState() => NavegacionState();
}
  

