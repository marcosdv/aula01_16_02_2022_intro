import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aula 01'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.cyan, //Color(0xFF0000FF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _criarTexto('Relou urdi', tamanho: 44),
          _criarTexto('Sejam bem Vindos'),

          Row(
            children: [
              Expanded(
                child: TextField(),
              ),
              ElevatedButton(
                onPressed: () { },
                child: Text('OK'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  //Widget _criarTexto(String texto, {double tamanho = 28}) {
  Widget _criarTexto(String texto, {double? tamanho}) {
    return Text(texto,
      style: TextStyle(fontSize: tamanho ?? 28),
      textAlign: TextAlign.center,
    );
  }
}
