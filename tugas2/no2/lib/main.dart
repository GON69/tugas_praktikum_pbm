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
  bool isvisible = false;

  void push() {
    setState(() {
      if (isvisible) {
        isvisible = false;
      } else {
        isvisible = true;
      }
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
                  isvisible == true
                      ? const Text(
                          "Hafiz z q",
                        )
                      : const Text(
                          "Gon",
                          style: TextStyle(fontSize: 12),
                        ),
                  ElevatedButton(onPressed: push, child: const Text('Switch'))
                ],
              ),
            )));
  }
}
