import 'package:flutter/material.dart';
import 'package:pantalla_inicial/src/pages/home_page.dart';
import 'package:pantalla_inicial/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}
