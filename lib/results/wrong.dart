import 'package:empower_kids/screens/sections.dart';
import 'package:flutter/material.dart';

class wrong extends StatelessWidget {
  const wrong({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF192138),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF01156C),
          title: const Text(
            "Try Again",
            style:
                TextStyle(fontFamily: 'times', fontSize: 25, letterSpacing: 1),
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
              child: Image(
                image: AssetImage("assets/sorry.gif"),
                height: 300,
                width: double.infinity,
              ),
            ),
            const Text(
              "You have chosen the wrong answer, Please Try again !",
              style: TextStyle(
                  fontFamily: 'times', fontSize: 22, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const sections();
                      }), (r) {
                        return true;
                      });
                    },
                    child: const Text("Go through once more",
                        style: TextStyle(fontFamily: 'times', fontSize: 20))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
