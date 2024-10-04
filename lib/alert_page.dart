import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page',
        style: TextStyle(
          color: const Color.fromARGB(255, 145, 2, 2),
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          child:Text('Mostrar Alerta'),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(190, 70),
            foregroundColor: Colors.blue,
            overlayColor: Colors.white,
            shape: StadiumBorder()),
          onPressed: () => _mostrarAlerta(context),
          ),   
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed:() {
          Navigator.pop(context);
        }),
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: 
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la caja de la alerta'),
              Image(image: AssetImage('assets/nba-teams.gif'))
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
            TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Ok'))
          ],
        );
      });
  }
}