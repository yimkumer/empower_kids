import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF192138),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 04, 0, 04),
                  alignment: Alignment.center,
                  height: 330,
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 5, color: const Color(0xffF4BB62)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    'assets/kidnap.gif',
                  )),
              const SizedBox(
                height: 20,
              ),
              DefaultTextStyle(
                style: const TextStyle(
                  fontFamily: 'times',
                  fontSize: 18,
                  letterSpacing: 3,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                        "Child trafficking is when a bad person takes a child away from their home and forces them to work or do other things against their will. Traffickers can be strangers or people the child knows. They often trick or lie to children to get them to go with them.",
                        speed: const Duration(milliseconds: 90)),
                  ],
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                  repeatForever: true,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
