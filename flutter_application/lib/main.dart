import 'package:flutter/material.dart';
import 'package:flutter_application/TelaAvisos.dart';
import 'package:flutter_application/TelaMapa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dominus',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/mapa',

      routes: {
        '/mapa': (context) => const TelaMapa(title: 'Mapa'),
        '/avisos': (context) => const TelaAvisos(),
      },
    );
  }
}
