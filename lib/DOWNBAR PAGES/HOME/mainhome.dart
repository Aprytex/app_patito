import 'package:app_patito/UTILIDADES/dimensiones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  Home() : super();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Bienvenido',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          width: Dimensiones.bloqueAnchura * 90,
          height: Dimensiones.bloqueAltura * 50,
          child: SvgPicture.asset('./assets/chat.svg'),
        ),
        Center(
          child: Text(
            'Usuario1',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
        Center(child: Text('Proyecto asignado')),
      ],
    );
  }
}
