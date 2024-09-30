import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{
  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsCorta()));
  }

  List<Widget> _crearItems(){
    List<Widget> listW =[];

    for(String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );
      listW..add(tempWidget)
          ..add(Divider());
    }
    return listW;
  }

  List<Widget> _crearItemsCorta(){
    return opciones.map((item){
      return Column(
        children: [
          ListTile(title: Text(item + '!'),
          subtitle: Text('Probando atributos'),
          leading: Icon(Icons.accessible_sharp),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}