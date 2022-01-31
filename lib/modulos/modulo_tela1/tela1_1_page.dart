import 'package:flutter/material.dart';

class Tela11Page extends StatelessWidget {
  const Tela11Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 1.1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Mostrar a page tela1.1'),
            Text('não ocultando o button navigator bar'),
          ],
        ),
      ),
    );
  }
}
