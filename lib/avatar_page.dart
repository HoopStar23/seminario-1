import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{
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
              backgroundImage: NetworkImage('https://www.sportscasting.com/wp-content/uploads/2020/12/Michael-Jordan-1.jpg'),
              radius: 25,
            )
          ) 
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
           image: NetworkImage('https://eskipaper.com/images/michael-jordan-5.jpg')),
      ),
    );
  }
}