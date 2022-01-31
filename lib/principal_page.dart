import 'package:flutter/material.dart';

import 'modulos/modulo_home/home_page.dart';
import 'modulos/modulo_mais/mais_page.dart';
import 'modulos/modulo_tela1/tela1_page.dart';
import 'modulos/modulo_tela2/tela2_page.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({
    Key? key,
  }) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  int _currentPage = 0;

  final _telas = [
    const HomePage(),
    const Tela1Page(),
    const Tela2Page(),
    const MaisPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentPage,
        children: _telas,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _currentPage,
        items: const [
          BottomNavigationBarItem(
              label: 'Modulo Home',
              icon: Icon(Icons.home_outlined),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: 'Modulo 1',
              icon: Icon(Icons.widgets_outlined),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: 'Modulo 2',
              icon: Icon(Icons.window_outlined),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: 'Modulo mais',
              icon: Icon(Icons.menu_outlined),
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}

class ModuleNavigatorData extends InheritedWidget {
  final _PrincipalPageState data;

  const ModuleNavigatorData({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
