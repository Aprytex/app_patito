import 'package:app_patito/REGISTRO/COMPONENTES/maincamera.dart';
import 'package:app_patito/UTILIDADES/dimensiones.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class registro extends StatefulWidget {
  const registro() : super();

  @override
  State<registro> createState() => _registroState();
}

class _registroState extends State<registro> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Dimensiones.bloqueAnchura * 90,
        height: Dimensiones.bloqueAltura * 100,
        child: Column(
          children: [
            MyStatefulWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Camara(),
                SizedBox(),
              ],
            ),
            SizedBox(
              height: Dimensiones.bloqueAltura * 0.5,
            ),
            Center(child: Text('Nombre del trabajador')),
            SizedBox(
              height: Dimensiones.bloqueAltura * 0.5,
            ),
            AutocompleteBasicUserExample(),
            SizedBox(
              height: Dimensiones.bloqueAltura * 0.5,
            ),
            SizedBox(
              height: Dimensiones.bloqueAltura * 0.5,
            ),
            Center(
              child: Text('Proyecto asignado'),
            ),
            SizedBox(
              height: Dimensiones.bloqueAltura * 0.5,
            ),
            Center(
              child: Text('Aqui va a ir el nombre del proyecto'),
            ),
            SizedBox(
              height: Dimensiones.bloqueAltura * 0.5,
            ),
            Center(
              child: Text('Hora que se registra'),
            ),
            Center(
              child: botonese(),
            ),
            SizedBox(
              height: Dimensiones.bloqueAltura * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}

class botonese extends StatefulWidget {
  botonese() : super();
  @override
  _botoneseState createState() => _botoneseState();
}

class _botoneseState extends State<botonese> {
  String texto_del_boton = 'no me han tocao';
  int abusos = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {
          setState(() {
            abusos += 1;

            texto_del_boton = 'han abuso de mi confianza ' + abusos.toString();
          });
        },
        icon: Text('sexo'),
        label: Center(
          child: Text(
            texto_del_boton,
            style: TextStyle(color: Colors.amber),
          ),
        )
        // const Icon(
        //   Icons.audiotrack,
        //   color: Colors.green,
        //   size: 110.0,
        // ),
        );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key}) : super();

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Entrada';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.list),
      elevation: 16,
      style: const TextStyle(color: Colors.blue),
      underline: Container(
        height: 2,
        color: Colors.lightBlue,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      alignment: AlignmentDirectional.center,
      items: <String>[
        'Entrada',
        'Despacho a proyectos',
        'Supervisión',
        'Salida'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class AutocompleteExampleApp extends StatelessWidget {
  const AutocompleteExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Autocomplete Basic User'),
        ),
        body: const Center(
          child: AutocompleteBasicUserExample(),
        ),
      ),
    );
  }
}

@immutable
class User {
  const User({
    required this.email,
    required this.name,
  });

  final String email;
  final String name;

  @override
  String toString() {
    return '$name, $email';
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is User && other.name == name && other.email == email;
  }

  @override
  int get hashCode => hashValues(email, name);
}

class AutocompleteBasicUserExample extends StatelessWidget {
  const AutocompleteBasicUserExample({Key? key}) : super(key: key);

  static const List<User> _userOptions = <User>[
    User(name: 'Alice', email: 'alice@example.com'),
    User(name: 'Bob', email: 'bob@example.com'),
    User(name: 'Charlie', email: 'charlie123@gmail.com'),
  ];

  static String _displayStringForOption(User option) => option.name;

  @override
  Widget build(BuildContext context) {
    return Autocomplete<User>(
      displayStringForOption: _displayStringForOption,
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<User>.empty();
        }
        return _userOptions.where((User option) {
          return option
              .toString()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (User selection) {
        debugPrint('You just selected ${_displayStringForOption(selection)}');
      },
    );
  }
}
