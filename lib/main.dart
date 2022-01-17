import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(home: Test()),
  );
}

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Future<CameraController>? controlador;

  Future<CameraController> cargar() async {
    final cameras = await availableCameras();
    log(cameras.length.toString());
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
    String botonsito = 'no me han presionao';
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white), label: 'Lista '),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), label: 'Calendario'),
        ],
        backgroundColor: Colors.black,
      ),

      appBar: AppBar(
        title: const Text('ASISTENCIA'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Placeholder(),

      //  const Center(
      //   child:
      //       // Text(
      //       //   'santa cachuca',
      //       //   style: TextStyle(
      //       //     fontSize: 20.0,
      //       //     fontWeight: FontWeight.bold,
      //       //     letterSpacing: 2.0,
      //       //     color: Colors.red,
      //       //   ),
      //       // ),
      //       Image(
      //     image: AssetImage('hinh-nen-dien-thoai-chat.jpg'),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('add'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
