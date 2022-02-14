import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  State<InputsPage> createState() => _InputsPage();
}

class _InputsPage extends State<InputsPage> {
  @override
  initState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs de texto'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              scrollPadding: const EdgeInsets.all(20.0),
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.grey)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20.0),
                  suffixIcon: Icon(Icons.person),
                  labelText: 'Nombre',
                  icon: Icon(Icons.contacts_rounded)),
            ),
            const SizedBox(height: 8),
            TextFormField(
              scrollPadding: const EdgeInsets.all(20.0),
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.grey)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20.0),
                  suffixIcon: Icon(Icons.mark_email_read_outlined),
                  labelText: 'Mail',
                  icon: Icon(Icons.mail)),
            ),
            const SizedBox(height: 8),
            TextFormField(
              //PASSWORD
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              scrollPadding: const EdgeInsets.all(20.0),
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.grey)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20.0),
                  suffixIcon: Icon(Icons.lock_outline),
                  labelText: 'Password',
                  icon: Icon(Icons.lock)),
            ),
            const SizedBox(height: 8),
            TextFormField(
              scrollPadding: const EdgeInsets.all(20.0),
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.grey)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20.0),
                  suffixIcon: Icon(Icons.calendar_today),
                  labelText: 'Fecha de nacimiento',
                  icon: Icon(Icons.calendar_today_outlined)),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(
                        2000), //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2101));
              },
            )
          ],
        ),
      ),
    );
  }
}
