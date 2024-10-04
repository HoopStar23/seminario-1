import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget{
  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage>{
  String _imagen1 = 'assets/Michael-Jordan-1.jpg';
  String _imagen2 = 'assets/michael-jordan-5.jpg';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('HS'),
              backgroundColor: Colors.brown,
            )
          ),
          Container(
            padding: EdgeInsets.all(6.5),
            child: CircleAvatar(
              backgroundImage: AssetImage(_imagen1),
              radius: 25,
            )
          ) 
        ],
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: AssetImage(_imagen2)),
            SizedBox(height: 20),
            IconButton(
              iconSize: 50,
              onPressed: _changeImagen,
               icon: Icon(Icons.change_circle)
              )
           ],
          ) 
      ) 
    );
  }

  void _changeImagen(){
    setState(() {
      String imagenTemp = _imagen1;
      _imagen1 = _imagen2;
      _imagen2 = imagenTemp;
    });
  }
}