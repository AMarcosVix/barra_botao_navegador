import 'package:flutter/material.dart';

import 'tela1_1_page.dart';

class Tela1Page extends StatefulWidget {
  const Tela1Page({Key? key}) : super(key: key);

  @override
  _Tela1PageState createState() => _Tela1PageState();
}

class _Tela1PageState extends State<Tela1Page> {
  final nomeTela = 'aaaa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modulo 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Você esta na page "tela1_page" do modulo 1'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Tela11Page(),
                  ),
                );
              },
              child: const Text('Ir para tela 1.1'),
            ),
          ],
        ),
      ),
    );
  }
}
