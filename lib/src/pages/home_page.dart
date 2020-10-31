// pacs flutter
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Variables
  final _tamanoLetra = TextStyle(fontSize: 30.0, color: Colors.blue);
  final _contador = 0;
  //
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clicks :',
              style: _tamanoLetra,
            ),
            Text('$_contador', style: _tamanoLetra),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
