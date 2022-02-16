import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Play Sound'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('audios/note1.wav');
                },
                style: const ButtonStyle(),
                child: const Text('PLAY SOUND'),
              ),
            ),
          ),
        ),
      ),
    ));
