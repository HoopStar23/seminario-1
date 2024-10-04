import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget{
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage>{
  double _valorSlider = 100.0;
  double _rotationValue = 0.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Title(color: Colors.black, child: Text('Tamaño', style: TextStyle(fontWeight: FontWeight.bold),)),
             _crearSliderSize(),
             Title(color: Colors.black, child: Text('Rotación', style: TextStyle(fontWeight: FontWeight.bold),)),
            _crearSliderRotate(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: Transform.rotate(angle: _rotationValue  * (3.1416 / 180), child: _crearImagen())) ],
        ),
      ));
  }

  Widget _crearSliderSize(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider, 
      min: 10.0,
      max: 300.0,
      onChanged:(_bloquearCheck) ? null : (valor){
        setState(() {
          _valorSlider = valor;
        });
      });
  }

  Widget _crearSliderRotate(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Rotacion de la imagen',
      value: _rotationValue, 
      min: 0.0,
      max: 360.0,
      onChanged:(_bloquearCheck) ? null : (valor){
        setState(() {
          _rotationValue = valor;
        });
      });
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/be/03/5d/be035d89189bde329590422495160e53.png'),
      width: _valorSlider,
      fit: BoxFit.contain
      );
  }

  Widget _crearCheckbox(){
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor!;
        });
      });
  }

  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor!;
        });
      });
  }
}