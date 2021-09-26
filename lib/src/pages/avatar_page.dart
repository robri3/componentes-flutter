import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.JWkBQIbIWigSHFjfnUK4aQHaFT?pid=ImgDet&rs=1'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('BR'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          minRadius: 20.0,
          maxRadius: 120.0,
          backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.JWkBQIbIWigSHFjfnUK4aQHaFT?pid=ImgDet&rs=1'),
            ),

        ),
        
       /* Container(
          margin: EdgeInsets.all(100.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
            image: DecorationImage(
              image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.JWkBQIbIWigSHFjfnUK4aQHaFT?pid=ImgDet&rs=1'),
              fit: BoxFit.fill,
            ),

            /*FadeInImage(
          height: 200.0,
          width: double.maxFinite,
          
          placeholder: AssetImage('assets/jar-loading.gif'),
           image: NetworkImage('https://th.bing.com/th/id/R.7b14029ccec406ce581a0cf74a4c578b?rik=fxJd6EpdXPFpFQ&pid=ImgRaw&r=0'),
          ),*/
          ),
        ),*/
      );
    
  }
}
