import 'package:empower_kids/results/corrrect.dart';
import 'package:empower_kids/results/wrong.dart';
import 'package:flutter/material.dart';

class mcq extends StatefulWidget {
  const mcq({super.key});

  @override
  State<mcq> createState() => _mcqState();
}

class _mcqState extends State<mcq> {
  late int selected;
  late int chosen;
  @override
  void initState() {
    super.initState();
    selected = 0;
    chosen = 0;
  }

  setselected(int val) {
    setState(() {
      selected = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF192138),
        appBar: AppBar(
          backgroundColor: const Color(0xFF01156C),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            "MCQ Test",
            style:
                TextStyle(fontFamily: "times", fontSize: 24, letterSpacing: 2),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Question : \n\n In a village, a group of children was lured away from their homes with false promises of a better life in the city. They were forced to work without any freedom to leave. ",
                  style: TextStyle(
                      fontFamily: "times",
                      fontSize: 20,
                      letterSpacing: 1,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                child: Center(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 04, 0, 04),
                      alignment: Alignment.center,
                      height: 330,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: const Color(0xffF4BB62)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        'assets/kidnap.gif',
                      )),
                ),
              ),
              const Text(
                "What right were these children denied ? :\n",
                style: TextStyle(
                    fontFamily: 'times',
                    fontSize: 20,
                    letterSpacing: 1,
                    color: Colors.white),
              ),
              RadioListTile(
                value: 1,
                groupValue: selected,
                title: const Text(
                  "Option A :",
                  style: TextStyle(fontFamily: 'times', color: Colors.white),
                ),
                subtitle: const Text(
                  "Right to Freedom and Protection from Trafficking",
                  style: TextStyle(
                      fontFamily: 'times', color: Colors.white, fontSize: 15),
                ),
                activeColor: Colors.green,
                tileColor: Colors.grey,
                onChanged: (val) {
                  chosen = 1;
                  setselected(val!);
                },
              ),
              const Divider(
                height: 20,
                color: Colors.blue,
              ),
              RadioListTile(
                value: 2,
                groupValue: selected,
                title: const Text(
                  "Option B :",
                  style: TextStyle(fontFamily: 'times', color: Colors.white),
                ),
                subtitle: const Text(
                  "Right to Education",
                  style: TextStyle(
                      fontFamily: 'times', color: Colors.white, fontSize: 15),
                ),
                activeColor: Colors.green,
                tileColor: Colors.grey,
                onChanged: (val) {
                  print("object $val");
                  setselected(val!);
                },
              ),
              const Divider(
                height: 20,
                color: Colors.blue,
              ),
              RadioListTile(
                value: 3,
                groupValue: selected,
                title: const Text(
                  "Option C :",
                  style: TextStyle(fontFamily: 'times', color: Colors.white),
                ),
                subtitle: const Text(
                  "Right to Travel",
                  style: TextStyle(
                      fontFamily: 'times', color: Colors.white, fontSize: 15),
                ),
                activeColor: Colors.green,
                tileColor: Colors.grey,
                onChanged: (val) {
                  print("object $val");
                  setselected(val!);
                },
              ),
              const Divider(
                height: 20,
                color: Colors.blue,
              ),
              RadioListTile(
                value: 4,
                groupValue: selected,
                title: const Text(
                  "Option D :",
                  style: TextStyle(fontFamily: 'times', color: Colors.white),
                ),
                subtitle: const Text(
                  "Right to Eat Candy",
                  style: TextStyle(
                      fontFamily: 'times', color: Colors.white, fontSize: 15),
                ),
                activeColor: Colors.green,
                tileColor: Colors.grey,
                onChanged: (val) {
                  print("object $val");
                  setselected(val!);
                },
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    if (chosen == 1) {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const correct();
                      }), (r) {
                        return true;
                      });
                    } else {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const wrong();
                      }), (r) {
                        return true;
                      });
                    }
                  },
                  child: const Text(
                    'Submit Answer',
                    style: TextStyle(
                      fontFamily: 'times',
                      fontSize: 27,
                      color: Colors.white,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
