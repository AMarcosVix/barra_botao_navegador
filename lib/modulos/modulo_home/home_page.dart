import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modulo Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Você esta na page "home_page" do modulo home'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Ir para modulo 1'),
            ),
          ],
        ),
      ),
    );
  }
}
