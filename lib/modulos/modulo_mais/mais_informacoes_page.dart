import 'package:flutter/material.dart';

class MaisInformacoesPage extends StatelessWidget {
  const MaisInformacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mais informações'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('A page informações mostrar tela toda'),
            Text('ocultando o button navigator bar'),
          ],
        ),
      ),
    );
  }
}
