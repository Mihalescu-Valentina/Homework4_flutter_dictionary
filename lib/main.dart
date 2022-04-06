import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const DictionaryApp());
}

class DictionaryApp extends StatelessWidget {
  const DictionaryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = [
    'Bună ziua!',
    'Guten Tag!',
    'Mă numesc ',
    'Ich heiße',
    'Cum ești?',
    'Wie geht es dir?',
    'Sunt bine.',
    'Ich bin gut.',
    'Câți ani ai?',
    'Wie alt bist du?',
    'Unde locuiești?',
    'Wo wohnst du?',
    'Unu',
    'Ein',
    'Doi',
    'Zwei',
    'Trei',
    'Drei',
    'Patru',
    'Vier',
    'Cinci',
    'Fünf',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Basic Phrases"), centerTitle: true),
        body: GridView.builder(
            padding: const EdgeInsets.all(22),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 0.5,
            ),
            itemCount: 22,
            itemBuilder: (BuildContext context, int index) {
              return ElevatedButton(
                child: Text(items[index]),
                onPressed: () {
                  AudioPlayer audioPlayer = AudioPlayer();


                   if(index==0) {
                     audioPlayer.play('https://www.computerhope.com/jargon/m/example.mp3');
                   }



                },
              );
            }));
  }
}
