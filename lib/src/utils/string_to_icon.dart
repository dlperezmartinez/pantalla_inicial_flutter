import 'package:flutter/material.dart';

final icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input_outlined': Icons.input_outlined,
  'check_box': Icons.check_box,
  'list': Icons.list,
};

Icon getIcon(String nombre) {
  return Icon(icons[nombre]);
}
