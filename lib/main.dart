import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'DOWNBAR PAGES/CALENDARIO/maincalen.dart';
import 'DOWNBAR PAGES/LISTADO/mainlist.dart';
import 'DOWNBAR PAGES/HOME/mainhome.dart';
import 'REGISTRO/mainregis.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(home: Test()),
  );
}

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int _seleccionao = 0;

  void _tocao(int index) {
    setState(() {
      _seleccionao = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String botonsito = 'no me han presionao';
    List<Widget> paginas = [
      Listhome(),
      Home(),
      MyApp(),
    ];

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white), label: 'Lista '),
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today, color: Colors.white),
                label: 'Calendario'),
          ],
          selectedItemColor: Colors.white,
          backgroundColor: Colors.lightBlue,
          currentIndex: _seleccionao,
          onTap: (value) => {_tocao(value)},
        ),
        appBar: AppBar(
          title: const Text('Asistencia Proyectos'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: paginas[_seleccionao]);
  }
}
