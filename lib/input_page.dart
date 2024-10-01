import 'package:flutter/material.dart';

class InputPage extends StatefulWidget{
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>{
  String _nombre = "";
  String _email = "";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        children: [_crearInput(), Divider(), _crearEmail(), _crearPassword(), Divider(), _crearPersona()],
      ),
    );
  }

  Widget _crearInput(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  Widget _crearPersona(){
    return ListTile(
      title: Text('Nombre es: ${_nombre}'),
      subtitle: Text('Email: ${_email}'),
    );
  }

  Widget _crearEmail(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value) => setState(() {
        _email = value;
      }));
  }

  Widget _crearPassword(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onChanged: (value) => setState(() {
        _email = value;
      }));
  }
}