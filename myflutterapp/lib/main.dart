import 'package:flutter/material.dart';
import 'package:myflutterapp/google_maps_screen.dart';
import 'package:myflutterapp/globals.dart';

void main() {
  runApp(const MainApp());
}

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
              MaterialPageRoute(builder: (context) => const GoogleMapsScreen()),
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
