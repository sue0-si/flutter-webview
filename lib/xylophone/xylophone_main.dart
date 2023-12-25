import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xylophone"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: bars("Do", Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: bars("Re", Colors.orange),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: bars("Mi", Colors.yellow),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: bars("Fa", Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: bars("Sol", Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: bars("La", Colors.indigo),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: bars("Si", Colors.purple),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: bars("Do", Colors.redAccent),
          ),
        ],
      ),
    );
  }
}

Widget bars(String text, Color color) {
  return Container(
    width: 50,
    height: double.infinity,
    color: color,
    child: Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
