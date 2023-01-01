import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text(
            "Şanlı Türk Bayrağı",
          ),
        ),
        body: Beyoglu(200),
      ),
    );
  }
}

class Beyoglu extends StatelessWidget {
  Beyoglu(this.G, {Key? key}) : super(key: key);
  double G;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(children: [
          Container(
            width: 1.5 * G,
            height: G,
            color: Colors.red,
          ),
          Positioned(
            left: 0.25 * G,
            top: 0.25 * G,
            child: Container(
              width: 0.5 * G,
              height: 0.5 * G,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
            ),
          ),
          Positioned(
            top: 0.3 * G,
            left: 0.3625 * G,
            child: Container(
              width: 0.4 * G,
              height: 0.4 * G,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.red),
            ),
          ),
          Positioned(
            left: 0.7 * G,
            top: 0.375 * G,
            child: Icon(
              Icons.star,
              color: Colors.white,
              size: 0.25 * G,
            ),
          )
        ]),
      ),
    );
  }
}
