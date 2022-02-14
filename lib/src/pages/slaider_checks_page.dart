import 'package:flutter/material.dart';

class SlaiderChecksPage extends StatefulWidget {
  @override
  State<SlaiderChecksPage> createState() => _SlaiderChecksPage();
}

class _SlaiderChecksPage extends State<SlaiderChecksPage> {
  double valor = 10.0;
  bool block = false;
  bool block2 = false;

  @override
  initState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slaiders y Checks'),
      ),
      body: Column(
        children: [
          Slider(
            value: valor,
            min: 1.0,
            max: 10.0,
            divisions: 10,
            onChanged: (double newValue) {
              if (!block && !block2) {
                //bloqueo del slider
                setState(() {
                  valor = newValue;
                });
              }
            },
          ),
          Row(children: [
            const Text('Checkbox blocker'),
            Checkbox(
                value: block,
                onChanged: (bool? newValue) {
                  setState(() {
                    block = newValue!;
                  });
                }),
          ]),
          Row(
            children: [
              const Text('Switch blocker'),
              Switch(
                  value: block2,
                  onChanged: (bool? newValue) {
                    setState(() {
                      block2 = newValue!;
                    });
                  })
            ],
          ),
          Image.asset(
            'assets/batman_figura.jpg',
            scale: valor,
          ),
        ],
      ),
    );
  }
}
