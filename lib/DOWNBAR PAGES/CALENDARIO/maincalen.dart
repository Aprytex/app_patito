import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'COMPONENTES/pages/basics_example.dart';
import 'COMPONENTES/pages/complex_example.dart';
import 'COMPONENTES/pages/events_example.dart';
import 'COMPONENTES/pages/multi_example.dart';
import 'COMPONENTES/pages/range_example.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TableCalendar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TableBasicsExample(),
      ),
    );
  }
}
