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
            SizedBox(
              width: Dimensiones.bloqueAnchura * 35,
              height: Dimensiones.bloqueAltura * 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[200],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(),
                      Text('Resgitro de  asistencia'),
                      Icon(Icons.app_registration)
                    ],
                  ),
                ),
              ),
            ),
            MyStatefulWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Camara(),
                Column(
                  children: [
                    botonese(),
                  ],
                ),
              ],
            ),
            Center(
              child: botonese(),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.alternate_email),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.red,
              child: Text('holi'),
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
