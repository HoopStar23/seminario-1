import 'package:flutter/material.dart';

class InputPage extends StatefulWidget{
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>{
  String _nombre = "";
  String _email = "";
  String _fecha = "";
  List<String> _hobbies = ['Leer', 'Ver Series', 'Viajar', 'Deporte'];
  String _opcionSeleccionada = 'Leer';
  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        children: [
          _crearInput(), 
          Divider(), 
          _crearEmail(), 
          Divider(), 
          _crearPassword(), 
          Divider(), 
          _crearFecha(), 
          Divider(),
          _crearDropdown(),
          Divider(), 
          _crearPersona()],
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

  Widget _crearFecha(){
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async{
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2020),
      lastDate: new DateTime(2050),
      locale: Localizations.localeOf(context),
      );

    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _fecha = _fecha.substring(0,11);
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  Widget _crearDropdown(){
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width: 30),
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropDown(),
            onChanged: (opt){
              setState(() {
                _opcionSeleccionada = opt!;
              });
            }
          )
        )
      ],
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown(){
    List<DropdownMenuItem<String>> lista = [];

    _hobbies.forEach((element){
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element));
    });
    return lista;
  }
}