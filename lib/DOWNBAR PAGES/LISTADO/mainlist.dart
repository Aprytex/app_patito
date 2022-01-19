import 'package:app_patito/DOWNBAR%20PAGES/LISTADO/COMPONENTES/Listadeplegable.dart';
import 'package:app_patito/UTILIDADES/dimensiones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listhome extends StatefulWidget {
  Listhome() : super();

  @override
  _ListhomeState createState() => _ListhomeState();
}

class _ListhomeState extends State<Listhome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: SizedBox(
          height: Dimensiones.bloqueAltura * 30,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('El pepe'),
                leading: Text(index.toString()),
              );
            },
          ),
        )),
      ],
    );
  }
}
