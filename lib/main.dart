import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main () => runApp(RutApp()); // Il punto d'ingresso della nostra app, e runApp è un metodo che serve a caricare il nostro widget, l'utilizzo in sostanza è obbligatorio

class RutApp extends StatelessWidget { // Il nostro widget è una classe ed eredita delle caratteristiche da, in questo caso, StatelessWidget
  const RutApp({super.key}); // Costruttore

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      title: 'Rut Flet',
      home: Scaffold(
        appBar: AppBar(title: const Text('Gelateria da Rut Flet')),
        body: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Column(children: [
              Container(height: 50,),
              const Text('Il gelato migliore del mondo', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Container(height: 50,),
              Image.network('https://bit.ly/flutgelato'),
              Container(height: 50,),
              ElevatedButton(
                onPressed: () {
                  SnackBar snackBar = const SnackBar(content: Text('La mail di Rut è rut@flet.dev'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Informazioni', style: TextStyle(color: Colors.white, fontSize: 20),)
                )
              ]),
          );
          }),
      )
    );
  }
}
