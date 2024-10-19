import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/create/create.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: primaryTheme,
    home: const Create(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sandbox",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text("Home!!!"),
            ),
          ],
        ));
  }
}
