import 'package:app_patito/REGISTRO/mainregis.dart';
import 'package:flutter/material.dart';
import 'package:clock/clock.dart';

class MyApp extends StatelessWidget {
  const MyApp() : super();

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro Diario'),
      ),
      body: Center(
        child: registro(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Añadir Evento',
        child: const Icon(Icons.add),
      ),
    );
  }
}
