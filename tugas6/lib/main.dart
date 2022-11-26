import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime),
      title: "HELLO",
      home: const Board(),
    );
  }
}

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardingState();
}

class _BoardingState extends State<Board> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _isBool = false;

  void _Boolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = !_isBool;
      if (_isBool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
        print("Hello!");
        print(_isBool);
      } else {
        print("BYE!");
        print(_isBool);
      }
    });
    prefs.setBool('isbool', _isBool);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = prefs.getBool('isbool') ?? _isBool;
      if (_isBool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
        print(_isBool);
        print("Hello!");
      } else {
        print(_isBool);
        print("BYE!");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/img/canva.png",
            width: null,
            height: null,
          ),
          const SizedBox(height: 10, width: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.blueGrey,
            width: null,
            height: null,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        height: 1.5),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10, width: 10),
          ElevatedButton(onPressed: _Boolean, child: const Text('Start')),
        ]),
      )),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello Guys')),
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            width: 300,
            height: 300,
            child: Image.asset(
              "assets/img/hello.gif",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "HELLO THERE!",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                fontSize: 20),
          ),
        ]),
      )),
    );
  }
}
