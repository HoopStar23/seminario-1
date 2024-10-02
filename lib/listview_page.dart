import 'dart:async';
import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget{
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage>{
  List<int> _listaNumeros = [];
  int _lastItem = 0;
  ScrollController _scrollController = new ScrollController();
  bool _isLoading = false;

  @override
  void initState(){
    super.initState();
    _agregar10();

    _scrollController.addListener((){
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  void dispose(){
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: Stack(children: [_crearLista(), _crearLoading()]),
    );
  }


  Widget _crearLista(){
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index){
        final imagen = _listaNumeros[index];

        return FadeInImage(
          fit: BoxFit.cover,
          height: 250,
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/500/300?image=$imagen'));
      },
    );
  }

  Future fetchData() async{
    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    return new Timer(duration, responseHTTP);
  }
  void responseHTTP(){
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 100,
    curve: Curves.fastOutSlowIn, duration:  Duration(milliseconds:  250));
    _agregar10();
  }

  void _agregar10(){
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _listaNumeros.add(_lastItem);
    }
    setState(() {});
  }

  Widget _crearLoading(){
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(height: 15.0,)
        ],
      );
    }else{
      return Container();
    }
  }
}