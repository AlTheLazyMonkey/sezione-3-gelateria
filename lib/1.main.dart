import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main () => runApp(RutApp()); // Il punto d'ingresso della nostra app, e runApp è un metodo che serve a caricare il nostro widget, l'utilizzo in sostanza è obbligatorio

class RutApp extends StatelessWidget { // Il nostro widget è una classe ed eredita delle caratteristiche da, in questo caso, StatelessWidget
  const RutApp({super.key}); // Costruttore

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Gelateria da Rut Flet')),
        body: const Text('Contenuto del body'),
      )
    );
  }
}
