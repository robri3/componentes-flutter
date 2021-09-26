

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
 
 int _idImagen = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
         _cardTipo1(),
         SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
         _cardTipo1(),
         SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
         _cardTipo1(),
         SizedBox(height: 30.0,),
         _cardTipo2(),
         SizedBox(height: 30.0,),
        ],
      )
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(children: [
          ListTile(
            leading: Icon(Icons.photo, color: Colors.red),
            title: Text('Tarjeta numero $_idImagen '),
            subtitle: Text('Esta es una tarjeta increible la verdad, una cosa de locos es esto'),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: [
              TextButton(
                onPressed: (){},
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: (){},
                child: Text('Aceptar'),
              )
            ],
          ),
          
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    

     final card = Container(
     // clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://picsum.photos/id/$_idImagen/200/300'),
          height: 250.0,
          fit: BoxFit.cover,
         
          ),
          //Image(
          //  image: NetworkImage('https://th.bing.com/th/id/R.f3a74dab36851ecda6c71a7fcafa4cad?rik=ZURPYHn%2fDIYuUg&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2017%2f03%2f28%2f440135-path-landscape.jpg&ehk=Y9w%2bWHJQNTpldTTJ49u0Teqr%2bkGr17l%2b7EgfPM%2bRpbU%3d&risl=&pid=ImgRaw&r=0')
          //  ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Texto de la super imagen $_idImagen')
              ),
        ],
      ),
    );
    
  _idImagen++;
    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
        ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1.0,
            spreadRadius: 2.0,
            offset: Offset(1.0, 3.0)
          )
        ],
        color: Colors.white,
      ),
      
    );
    
  }
}