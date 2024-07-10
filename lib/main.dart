import 'package:flutter/material.dart';

//final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //scaffoldMessengerKey: scaffoldMessengerKey,
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tema 4 Ejercicio 3'),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () => {
            //scaffoldMessengerKey.currentState!.showSnackBar(
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('FAB Presionado'),
              ),
            )
          },
          child: const Icon(Icons.favorite),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text('Menú'),
            ),
            ListTile(
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
                //scaffoldMessengerKey.currentState!.showSnackBar(
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Inicio Presionado'),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Perfil'),
              onTap: () {
                Navigator.pop(context);
                //scaffoldMessengerKey.currentState!.showSnackBar(
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Perfil Presionado'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
