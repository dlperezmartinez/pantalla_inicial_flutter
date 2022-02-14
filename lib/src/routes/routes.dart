import 'package:flutter/material.dart';
import 'package:pantalla_inicial/src/pages/alert_page.dart';
import 'package:pantalla_inicial/src/pages/animated_container.dart';
import 'package:pantalla_inicial/src/pages/avatar_page.dart';
import 'package:pantalla_inicial/src/pages/card_page.dart';
import 'package:pantalla_inicial/src/pages/home_page.dart';
import 'package:pantalla_inicial/src/pages/inputs_page.dart';
import 'package:pantalla_inicial/src/pages/slaider_checks_page.dart';

Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
  return <String, Widget Function(BuildContext)>{
    '/': (BuildContext context) => HomePage(),
    '/alert': (BuildContext context) => AlertPage(),
    '/avatar': (BuildContext context) => AvatarPage(),
    '/card': (BuildContext context) => CardPage(),
    '/animated_Container': (BuildContext context) =>
        AnimatedContainerPageState(),
    '/inputs': (BuildContext context) => InputsPage(),
    '/slaidersChecks': (BuildContext context) => SlaiderChecksPage(),
  };
}
