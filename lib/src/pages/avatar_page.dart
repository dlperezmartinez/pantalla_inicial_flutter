import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  @override
  State<AvatarPage> createState() => _AvatarPage();
}

class _AvatarPage extends State<AvatarPage> {
  @override
  initState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar widget'),
      ),
      body: const Center(
        child: FadeInImage(
          image: AssetImage('assets/avatar.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          fadeOutDuration: Duration(seconds: 2),
        ),
      ),
    );
  }
}
