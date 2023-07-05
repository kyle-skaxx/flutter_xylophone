import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final ting = AudioPlayer();

  void playSound(String note) {
    ting.play(AssetSource('note$note.wav'));
  }

  Expanded buildTile(Color color, String note) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(note);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTile(Colors.red, '1'),
              buildTile(Colors.orange, '2'),
              buildTile(Colors.yellow, '3'),
              buildTile(Colors.green, '4'),
              buildTile(Colors.blue, '5'),
              buildTile(Colors.indigo, '6'),
              buildTile(Colors.purple, '7'),
            ],
          ),
        ),
      ),
    );
  }
}
