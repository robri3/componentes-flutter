import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page')
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar alerta'),
          
          onPressed: () => _mostrarAlerta(context),
        
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_outlined),
        onPressed: (){
          Navigator.pop(context);
        },
      ),

    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context, 
      builder: (context){

        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo', textAlign: TextAlign.center ,),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              FlutterLogo(size: 100.0,),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop() ,
              ),
              TextButton(
              child: Text('Aceptar'),
              onPressed: (){
                Navigator.of(context).pop();
              } ,
              ),
          ],
        );

      },
      barrierDismissible: true,
      );
  }
}