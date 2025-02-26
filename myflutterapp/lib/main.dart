import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

const Color mantisGreen = Color.fromRGBO(102, 188, 122, 1.0);
const Color skyBlue = Color.fromRGBO(56, 184, 235, 1.0);
const Color crimsonRed = Color.fromRGBO(219, 35, 72, 1.0);
const Color lightBlack = Colors.black87;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'YMR Tree Plots',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: skyBlue,
        foregroundColor: lightBlack,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(200, 70),
            backgroundColor: skyBlue,
            foregroundColor: lightBlack,
          ),
          onPressed: () {
            debugPrint('Button pressed');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NewScreen()),
            );
          },
          child: const Text(
            'Start',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: const Text(
          'New Screen!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
