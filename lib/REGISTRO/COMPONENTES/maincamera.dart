import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_patito/UTILIDADES/dimensiones.dart';
import 'package:path/path.dart';

class Camara extends StatefulWidget {
  Camara() : super();

  @override
  _CamaraState createState() => _CamaraState();
}

class _CamaraState extends State<Camara> {
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
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: controlador,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              CameraController valor = snapshot.data as CameraController;

              return SizedBox(
                width: Dimensiones.bloqueAnchura * 15,
                height: Dimensiones.bloqueAltura * 10,
                child: GestureDetector(
                    child: valor.buildPreview(),
                    onTap: () {}), //aqui toma la foto
              );
            } else
              return Text("Controlador vacio");
          } else
            return Text("Sin cargar");
        },
      ),
    );
  }

  @override
  void initState() {
    controlador = cargar();
  }
}
