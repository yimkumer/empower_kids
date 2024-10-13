import 'package:empower_kids/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class registration extends StatelessWidget {
  const registration({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    final controller1 = TextEditingController();
    bool click = true;

    bool validate = false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF192138),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF01156C),
          title: const Text(
            "Registration Page",
            style:
                TextStyle(fontFamily: 'times', fontSize: 25, letterSpacing: 1),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                child: Center(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 04, 0, 04),
                      alignment: Alignment.center,
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: const Color(0xffF4BB62)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Lottie.asset(
                        'assets/register.json',
                      )),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Enter your username',
                    hintStyle: TextStyle(
                      fontFamily: 'times',
                      fontSize: 20,
                      letterSpacing: 01,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.transparent,
                    icon: Icon(
                      Icons.account_circle_outlined,
                      size: 35,
                    ),
                    iconColor: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: TextField(
                  controller: controller1,
                  decoration: const InputDecoration(
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(
                      fontFamily: 'times',
                      fontSize: 20,
                      letterSpacing: 01,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.transparent,
                    icon: Icon(
                      Icons.edit_note_sharp,
                      size: 40,
                    ),
                    iconColor: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const login();
                    }), (r) {
                      return true;
                    });
                  },
                  child: const Text(
                    "Registered ? Go to Login Page",
                    style: TextStyle(fontFamily: 'times', fontSize: 17),
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () async {
                              if (controller.text.isEmpty
                                  ? validate = true
                                  : validate = false || controller1.text.isEmpty
                                      ? validate = true
                                      : validate = false) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const AlertDialog(
                                        backgroundColor: Color(0xFF01156C),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40.0)),
                                          side: BorderSide(color: Colors.red),
                                        ),
                                        alignment: Alignment.center,
                                        icon: Icon(
                                            Icons.thumb_down_off_alt_outlined),
                                        iconColor: Colors.red,
                                        title: Text(
                                          'Invalid',
                                          style: TextStyle(
                                            fontFamily: 'times',
                                            color: Colors.white,
                                            letterSpacing: 3,
                                            fontSize: 30,
                                          ),
                                        ),
                                        content: Text(
                                          'Requires both the Fields',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                            fontFamily: 'times',
                                          ),
                                        ),
                                      );
                                    });
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const AlertDialog(
                                        backgroundColor: Color(0xFF01156C),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(40.0)),
                                          side: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 31, 235, 55)),
                                        ),
                                        alignment: Alignment.center,
                                        icon: Icon(
                                            Icons.thumb_up_off_alt_outlined),
                                        iconColor:
                                            Color.fromARGB(255, 31, 235, 55),
                                        title: Text(
                                          'Registration Success',
                                          style: TextStyle(
                                            fontFamily: 'times',
                                            color: Colors.white,
                                            letterSpacing: 3,
                                            fontSize: 30,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        content: Text(
                                          'Go to Login Page',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                            fontFamily: 'times',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      );
                                    });
                                controller.clear();
                                controller1.clear();
                              }
                            },
                            child: const Text(
                              'Register User',
                              style: TextStyle(
                                fontFamily: 'times',
                                fontSize: 27,
                                color: Colors.white,
                                letterSpacing: 0.5,
                              ),
                            ),
                          )),
                      const SizedBox(height: 50)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
