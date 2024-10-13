import 'package:empower_kids/screens/sections.dart';
import 'package:flutter/material.dart';

class start extends StatelessWidget {
  const start({super.key});

  Widget showCard(String name, String value) {
    return Card(
      color: const Color(0xFF192138),
      child: ListTile(
        leading: Image.asset(
          'assets/card.png',
          height: 180,
        ),
        selectedTileColor: Colors.blue,
        textColor: const Color.fromARGB(255, 255, 255, 255),
        titleTextStyle: const TextStyle(fontFamily: 'times'),
        contentPadding: const EdgeInsets.all(10),
        tileColor: Colors.transparent,
        shape: BeveledRectangleBorder(
          side: const BorderSide(
              width: 0.6, color: Color.fromARGB(255, 255, 255, 255)),
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text(
          "$name : $value",
          style: const TextStyle(
              fontFamily: 'times', fontSize: 20, letterSpacing: 2, height: 1.5),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF192138),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xFF01156C),
            title: const Text(
              "Welcome !",
              style: TextStyle(fontSize: 28, fontFamily: 'times'),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Image(
                  image: AssetImage("assets/logo.png"),
                  height: 250,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 05),
                  child: Text(
                    "Tap on any of the Rights Below :",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'times',
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const sections();
                    }), (r) {
                      return true;
                    });
                  },
                  child: showCard(
                      'Right to being protected from being trafficked and forced into bonded labour',
                      'Start'),
                ),
                showCard('Right against discrimination', 'Start'),
                showCard('Right to personal liberty and due process of law',
                    'Start'),
                showCard(
                    'Right to be protected from being abused and forced by economic necessity',
                    'Start'),
                showCard(
                    'Right of weaker sections of the people to be protected from social injustice and all forms of exploitation',
                    'Start'),
                showCard(
                    'Right to free and compulsory elementary education for all children',
                    'Start'),
                showCard(
                    'Right to be protected from any hazardous employment till the age of 14 years',
                    'Start'),
                showCard(
                    'Right to equal opportunities and facilities to develop in a healthy manner',
                    'Start'),
                showCard(
                    'Right to nutrition and standard of living and improved public health',
                    'Start'),
                showCard(
                    'Right of weaker sections of the people to be protected from social injustice and all forms of exploitation',
                    'Start'),
                showCard(
                    'Right of minorities for protection of their interests',
                    'Start'),
                showCard('Right to personal liberty and due process of law',
                    'Start'),
              ],
            ),
          )),
    );
  }
}
