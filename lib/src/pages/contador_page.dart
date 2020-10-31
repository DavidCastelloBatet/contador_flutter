// pacs flutter
import 'package:flutter/material.dart';

//
class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  // Variables
  final _tamanoLetra = TextStyle(fontSize: 30.0, color: Colors.blue);
  int _contador = 0;
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
        floatingActionButton: _crearBotones());
  }

  _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _agregar,
          child: Icon(Icons.add),
        ),
        SizedBox(width: 80.0),
        FloatingActionButton(
          onPressed: _resetear,
          child: Icon(Icons.refresh),
        ),
        SizedBox(width: 90.0),
        FloatingActionButton(
          onPressed: _quitar,
          child: Icon(Icons.remove),
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _contador++);
  }

  void _resetear() {
    setState(() => _contador = 0);
  }

  void _quitar() {
    setState(() => _contador--);
  }
}
