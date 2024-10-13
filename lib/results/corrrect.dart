import 'dart:math';

import 'package:empower_kids/screens/start.dart';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class correct extends StatefulWidget {
  const correct({super.key});

  @override
  State<correct> createState() => _correctState();
}

class _correctState extends State<correct> {
  bool isPlaying = false;
  final controller = ConfettiController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        isPlaying = controller.state == ConfettiControllerState.playing;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Scaffold(
            backgroundColor: const Color(0xFF192138),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xFF01156C),
              title: const Text(
                "Success",
                style: TextStyle(
                    fontFamily: 'times', fontSize: 25, letterSpacing: 1),
                textAlign: TextAlign.center,
              ),
            ),
            body: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Image(
                    image: AssetImage("assets/congrats.gif"),
                    height: 300,
                    width: double.infinity,
                  ),
                ),
                const Text(
                  "You have chosen the correct answer, Good Job !",
                  style: TextStyle(
                      fontFamily: 'times', fontSize: 22, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        if (isPlaying) {
                          controller.stop();
                        } else {
                          controller.play();
                        }
                      },
                      child: Text(isPlaying ? "Stop" : "Celebrate",
                          style: const TextStyle(
                              fontFamily: 'times', fontSize: 20))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                            return const start();
                          }), (r) {
                            return true;
                          });
                        },
                        child: const Text("Go to See more Rights",
                            style:
                                TextStyle(fontFamily: 'times', fontSize: 20))),
                  ),
                )
              ],
            ),
          ),
          ConfettiWidget(
            confettiController: controller,
            shouldLoop: true,
            blastDirectionality: BlastDirectionality.explosive,
            emissionFrequency: 0.01,
            gravity: 0.2,
            numberOfParticles: 20,
            minBlastForce: 10,
            maxBlastForce: 70,
          )
        ],
      ),
    );
  }
}
