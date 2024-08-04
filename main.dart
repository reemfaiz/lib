// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 172, 244),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 211, 144, 222),
        title: Text("نغمات"),
      ),
      body: Column(
        children: [
        TextButton(
            onPressed: () {
              AudioPlayer player = AuPdioPlayer();
              Source path = AssetSource("1.mp3");
              player.play(path);
              //final player = AudioPlayer();
              //player.play(UrlSource('asset/music-1.mp3'));
            },
            child: Text("my music"),
          ),

          TextButton(
            onPressed: () {
              AudioPlayer player = AudioPlayer();
              Source path = AssetSource("2.mp3");
              player.play(path);
              //final player = AudioPlayer();
              //player.play(UrlSource('asset/music-1.mp3'));
            },
            child: Text("my music"),
          ),
        ],
      ),
    );
  }
}
