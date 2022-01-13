import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

void main() { 
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(
      MaterialApp(
        home: Test(),
      ),
    );}

      // OAMARAAAAAAAA
// final cameras = await availableCameras();
//   final firstCamera = cameras.first;
// CameraController _controller = CameraController(
//       // Get a specific camera from the list of available cameras.
//       firstCamera,
//       ResolutionPreset.medium,
//     );

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);
 CameraController mipepe = //esperaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
  @override
  Widget build(BuildContext context) {
    String botonsito = 'no me han presionao';
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white), label: 'Listado '),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), label: 'Bienvenido'),
        ],
        backgroundColor: Colors.black,
      ),

      appBar: AppBar(
        title: const Text('ASISTENCIA'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
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

              CameraPreview(_controller)


            ],
          ),
        ),
      ),

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
