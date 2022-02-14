import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  @override
  State<AlertPage> createState() => _AlertPage();
}

class _AlertPage extends State<AlertPage> {
  @override
  initState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Widget'),
      ),
      body: AlertDialog(
        content: Text('Alerta'),
      ),
    );
  }
}
