import 'package:flutter/material.dart';

class OutraTelaMaisPage extends StatelessWidget {
  const OutraTelaMaisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Outra tela'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Mostrar a page outra tela'),
            Text('não ocultando o button navigator bar'),
          ],
        ),
      ),
    );
  }
}
