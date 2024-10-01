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
        children: <Widget>[_cartTipo1(), SizedBox(width: 10), _cartTipo2()],
      ),
    );
  }

  Widget _cartTipo1(){
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
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

  Widget _cartTipo2(){
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
            'https://www.designyourway.net/blog/wp-content/uploads/2018/01/cool-computer-backgrounds-8.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 10),
            height: 250,
            fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Esta es la prueba de que funciona la imagen'),
            )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black26,
          blurRadius: 10,
          spreadRadius: 2,
          offset: Offset(2, 10))
          
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: card,
        ));
  }
}