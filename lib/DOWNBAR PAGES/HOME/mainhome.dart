import 'package:app_patito/UTILIDADES/dimensiones.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home() : super();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Dimensiones.bloqueAltura * 1,
        ),
        Center(
          child: Text(
            'Bienvenido',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          width: Dimensiones.bloqueAnchura * 20,
          height: Dimensiones.bloqueAltura * 20,
          child: Image.asset('imagenes/pepe.png'),
        ),
        SizedBox(
          height: Dimensiones.bloqueAltura * 0.5,
        ),
        Center(
          child: Text(
            'Usuario1',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
        SizedBox(
          height: Dimensiones.bloqueAltura * 0.5,
        ),
        Center(child: Text('Proyecto asignado')),
      ],
    );
  }
}
