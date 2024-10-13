import 'package:empower_kids/screens/registration.dart';
import 'package:empower_kids/screens/start.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _controller = TextEditingController();

  final _controller1 = TextEditingController();

  bool click = true;

  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF192138),
          appBar: AppBar(
            backgroundColor: const Color(0xFF01156C),
            title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Login ",
                style: TextStyle(
                    fontSize: 25, letterSpacing: 2, fontFamily: 'times'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  "assets/4.gif",
                  height: 80,
                ),
              ),
              const Text(
                " Page",
                style: TextStyle(
                    fontSize: 25, letterSpacing: 2, fontFamily: 'times'),
              ),
            ]),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Image(
                  image: AssetImage("assets/flagicon.png"),
                  height: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Hi There ! Let's Get Started : ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'times',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 1,
                    height: 0.7,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: TextField(
                    controller: _controller,
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
                    controller: _controller1,
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
                        return const registration();
                      }), (r) {
                        return true;
                      });
                    },
                    child: const Text(
                      "New User ? Register Now",
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
                                if (_controller.text.isEmpty
                                    ? _validate = true
                                    : _validate =
                                        false || _controller1.text.isEmpty
                                            ? _validate = true
                                            : _validate = false) {
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
                                          icon: Icon(Icons
                                              .thumb_down_off_alt_outlined),
                                          iconColor: Colors.red,
                                          title: Text(
                                            'Error',
                                            style: TextStyle(
                                              fontFamily: 'times',
                                              color: Colors.white,
                                              letterSpacing: 3,
                                              fontSize: 30,
                                            ),
                                          ),
                                          content: Text(
                                            'Fill up both the fields !',
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
                                  Navigator.pushAndRemoveUntil(context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) {
                                    return const start();
                                  }), (r) {
                                    return true;
                                  });
                                  _controller.clear();
                                  _controller1.clear();
                                }
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontFamily: 'times',
                                  fontSize: 27,
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            )),
                        SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(253, 255, 149, 0)),
                            onPressed: () {
                              _controller.clear();
                              _controller1.clear();
                            },
                            child: const Text(
                              'Reset Fields',
                              style: TextStyle(
                                fontFamily: 'times',
                                fontSize: 27,
                                color: Colors.white,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
