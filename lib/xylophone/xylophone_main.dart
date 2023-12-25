import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

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

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  Soundpool pool = Soundpool.fromOptions(options: SoundpoolOptions.kDefault);

  List<int> _soundIds = [];

  @override
  void initState() {
    super.initState();
    initSoundPool();
  }

  Future<void> initSoundPool() async {
    int soundId = await rootBundle
        .load('assets/do1.wav')
        .then((soundData) {
      return pool.load(soundData);
    });
    soundId = await rootBundle
        .load('assets/re.wav')
        .then((soundData) {
      return pool.load(soundData);
    });
    soundId = await rootBundle
        .load('assets/mi.wav')
        .then((soundData) {
      return pool.load(soundData);
    });
    soundId = await rootBundle
        .load('assets/fa.wav')
        .then((soundData) {
      return pool.load(soundData);
    });
    soundId = await rootBundle
        .load('assets/sol.wav')
        .then((soundData) {
      return pool.load(soundData);
    });
    soundId = await rootBundle
        .load('assets/la.wav')
        .then((soundData) {
      return pool.load(soundData);
    });
    soundId = await rootBundle
        .load('assets/si.wav')
        .then((soundData) {
      return pool.load(soundData);
    });
    soundId = await rootBundle
        .load('assets/do2.wav')
        .then((soundData) {
      return pool.load(soundData);
    });
    _soundIds.add(soundId);
  }

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
