import 'package:flutter/material.dart';

void main() {
  runApp(const Hafiz());
}

class Hafiz extends StatefulWidget {
  const Hafiz({super.key});

  @override
  State<Hafiz> createState() => _HafizState();
}

class _HafizState extends State<Hafiz> {
  double angka = 0;

  void tombolDitekan() {
    setState(() {
      angka = angka + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.red)),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Aplikasiku')),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    angka.toString(),
                  ),
                  Text(
                    "Namaku hafiz",
                    style: TextStyle(fontSize: 12 + angka),
                  ),
                  ElevatedButton(
                      onPressed: tombolDitekan,
                      child: const Text('Tambah angka'))
                ],
              ),
            )));
  }
}
