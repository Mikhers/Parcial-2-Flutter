import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcial_2_flutter/pages/Calculadora.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mi Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bienvenido a su calculadora:',
            ),

            const SizedBox(height: 30),
            CupertinoButton.filled(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Calculadora()));
              },
              child: const Text('Ir'),
            ),
          ],
        ),
      ),
    );
  }
}
