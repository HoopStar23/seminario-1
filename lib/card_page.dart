import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[_cartTipo1()],
      ),
    );
  }

  Widget _cartTipo1(){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text( 
              'Esta es una prueba para ver lo que ocurre con una tarjeta que tie ne un subtitle bastante largo y que no sabemos como responderá')
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(child: Text('Cancelar'), onPressed: (){}),
              TextButton(child: Text('Ok'), onPressed: (){})
            ],
          )
        ],
      ),
    );
  }
}