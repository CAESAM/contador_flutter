import 'package:flutter/material.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tema 4 Ejercicio 3'),
        ),
        body: Center(
          child: FloatingActionButton(
            onPressed: () => {
              scaffoldMessengerKey.currentState!.showSnackBar(
                SnackBar(
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
              ElevatedButton(
                onPressed: () {
                  scaffoldMessengerKey.currentState!.showSnackBar(
                    SnackBar(
                      content: Text('Inicio Presionado'),
                    ),
                  );
                },
                child: const Text('Inicio'),
              ),
              ElevatedButton(
                onPressed: () {
                  scaffoldMessengerKey.currentState!.showSnackBar(
                    SnackBar(
                      content: Text('Perfil Presionado'),
                    ),
                  );
                },
                child: const Text('Perfil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
