import 'package:flutter/material.dart';

import 'mais_informacoes_page.dart';
import 'outra_tela_mais.dart';

class MaisPage extends StatefulWidget {
  const MaisPage({Key? key}) : super(key: key);

  @override
  _MaisPageState createState() => _MaisPageState();
}

class _MaisPageState extends State<MaisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modulo mais'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Você esta na page "mais_page" do modulo mais'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const OutraTelaMaisPage(),
                  ),
                );
              },
              child: const Text('Ir para page outra tela'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const MaisInformacoesPage(),
                  ),
                );
              },
              child: const Text('Ir para a page mais informações'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Ir modulo home'),
            ),
          ],
        ),
      ),
    );
  }
}
