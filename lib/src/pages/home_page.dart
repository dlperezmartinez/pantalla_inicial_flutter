import 'package:flutter/material.dart';
import 'package:pantalla_inicial/src/routes/routes.dart';
import 'package:pantalla_inicial/src/utils/string_to_icon.dart';

import '../menu_provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State<HomePage> {
  final opciones = ['Primero', 'Segundo', 'Tercero'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lista desde un Json')),
        body: buildListView());
  }

  Widget buildListView() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: listaItems(snapshot.requireData),
          );
        });
  }

  List<Widget> listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      opciones.add(widgTemp);
    });

    return opciones;
  }
}
