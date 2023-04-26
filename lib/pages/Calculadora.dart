import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiApp extends StatelessWidget{
  const MiApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Calculadora(),
    );
  }
}
class Calculadora extends StatefulWidget{
  const Calculadora({super.key});

  @override
  _CalculadoraState createState() => _CalculadoraState();
}
class _CalculadoraState extends State<Calculadora>{
    final TextEditingController _num1 = TextEditingController();
    final TextEditingController _num2 = TextEditingController();
    int _resultado = 0;

    void suma(int a,int b){
      setState(() {
        _resultado = a + b;
      });}

    resta(int a, int b){
      setState(() {
        _resultado = a-b;
      });}

    multiplicacion(int a,int b){
      setState(() {
        _resultado = a*b;
      });}

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Calculadora")),

        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('numero 1: '),
                    SizedBox(
                      width: 80,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _num1,),
                    ),

                    SizedBox(width: 20),
                    Text('Numero 2: '),
                    SizedBox(
                      width: 80,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _num2,),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                CupertinoButton.filled(
                    onPressed: () {
                      int a = int.parse(_num1.text);
                      int b = int.parse(_num2.text);
                      resta(a, b);
                    },
                    child: const Text('Restar')
                ),


                const SizedBox(height: 30),
                CupertinoButton.filled(
                    onPressed: () {
                      int a = int.parse(_num1.text);
                      int b = int.parse(_num2.text);
                      suma(a, b);
                    },
                    child: const Text('Sumar')
                ),
                const SizedBox(height: 30),
                CupertinoButton.filled(
                    onPressed: () {
                      int a = int.parse(_num1.text);
                      int b = int.parse(_num2.text);
                      multiplicacion(a, b);
                    },
                    child: const Text('multiplicar')
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text(
                      'Resultado: $_resultado',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }


}
