import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);//que es esto

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(
          children: [
            _crearSlider(),
            _checkBox(),
            _switch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label:'Tamaño de la imagen',
      
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
       onChanged:
        (valor){
         // return null;
         setState(() {
           if(!_bloquearCheck)
              _valorSlider=valor;
           
         });

       }
    );
  }

  Widget _checkBox(){

    return CheckboxListTile(
      title: Text('Bloquead slider'),
      value: _bloquearCheck, 
      onChanged:  (valor){
          setState(() {
             _bloquearCheck = valor!;
          });
         
        
        
      }
    );

  }

 Widget _crearImagen() {

   return Image(
     image: NetworkImage('https://th.bing.com/th/id/OIP.0LIp-hHixBxcgf7IIz12yAHaEo?pid=ImgDet&rs=1'),
     width: _valorSlider,
     fit: BoxFit.contain,
   );

 }

  Widget _switch() {
    return SwitchListTile(
      title: Text('Bloquead slider'),
      value: _bloquearCheck, 
      onChanged:  (valor){
          setState(() {
             _bloquearCheck = valor;
          });
         
        
        
      }
    );

  }
}