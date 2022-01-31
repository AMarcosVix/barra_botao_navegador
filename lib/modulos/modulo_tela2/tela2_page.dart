import 'package:flutter/material.dart';

class Tela2Page extends StatefulWidget {
  const Tela2Page({Key? key}) : super(key: key);

  @override
  _Tela2PageState createState() => _Tela2PageState();
}

class _Tela2PageState extends State<Tela2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modulo 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Você esta na page "tela2_page" do modulo 2'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
