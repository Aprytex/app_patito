import 'dart:convert';
import 'dart:developer';

import 'package:app_patito/DOWNBAR%20PAGES/LISTADO/COMPONENTES/Listadeplegable.dart';
import 'package:app_patito/UTILIDADES/dimensiones.dart';
import 'package:flutter/material.dart';
import 'COMPONENTES/Listadeplegable.dart';
import 'package:http/http.dart' as http;

class Listhome extends StatefulWidget {
  Listhome() : super();

  @override
  _ListhomeState createState() => _ListhomeState();
}

class _ListhomeState extends State<Listhome> {
  List<String> lista = [];

  void Cargarempleadospato() async {
    var Cargarlistapato = await http.get(
        Uri.parse(
            'https://recaudash.managua.gob.ni/servicios_deporte/servicioCatTor.php?torneo=LP%20Clausura%20temporada%202020-2021'),
        headers: {"Access-Control_Allow_Origin": "*"});
    if (Cargarlistapato.statusCode == 200) {
      var datos = jsonDecode(Cargarlistapato.body) as List<dynamic>;
      List<String> temp = [];
      datos.forEach((element) {
        String elpepe = element['equipo'] as String;
        temp.add(elpepe);
      });
      setState(() {
        lista = temp;
      });
    } else {
      setState(() {
        lista = ['No hay empleados ekisde'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    Cargarempleadospato();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: SizedBox(
              height: Dimensiones.bloqueAltura * 20,
              child: ListView.builder(
                itemCount: lista.length,
                padding: EdgeInsets.all(4),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(lista[index]),
                    tileColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    leading: Column(
                      children: [
                        Icon(Icons.person),
                        Text((index + 1).toString()),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                this.context,
                MaterialPageRoute(builder: (context) {
                  return MyStatefulWidget();
                }),
              );
            },
            tooltip: 'Añadir registro',
            child: Icon(Icons.person_add_alt),
          ),
        ],
      ),
    );
  }
}
