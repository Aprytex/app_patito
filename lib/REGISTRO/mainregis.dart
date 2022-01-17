import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class registro extends StatefulWidget {
  const registro() : super();

  @override
  State<registro> createState() => _registroState();
}

class _registroState extends State<registro> {
  Future<CameraController>? controlador;

  Future<CameraController> cargar() async {
    final cameras = await availableCameras();
    final firstCamera = cameras[1];
    CameraController elpepe = CameraController(
      // Get a specific camera from the list of available cameras.
      firstCamera,
      ResolutionPreset.values.last,
    );
    await elpepe.initialize();
    return elpepe;
  }

  @override
  void initState() {
    controlador = cargar();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 900,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 30),
                Text("ELPEPE PRIMERO"),
                Icon(Icons.access_alarm),
              ],
            ),
            Text("abajo de mi"),
            FutureBuilder(
              future: controlador,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    CameraController valor = snapshot.data as CameraController;

                    return Container(
                        child: SizedBox(
                            width: 100,
                            height: 100,
                            child: valor.buildPreview()));
                  } else
                    return Text("Controlador vacio");
                } else
                  return Text("Sin cargar");
              },
            ),
            Text("Arriba de mi culo"),
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
