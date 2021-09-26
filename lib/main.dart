import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/routes/routes.dart';

import 'package:componentes/src/pages/alert_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //home: HomePage(),
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        //Aqui entra si la ruta no existe

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage() //pagina por defecto
            );
      },
    );
  }
}
