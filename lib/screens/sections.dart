import 'package:empower_kids/first_sections/first.dart';
import 'package:empower_kids/first_sections/second.dart';
import 'package:empower_kids/first_sections/third.dart';
import 'package:flutter/material.dart';

class sections extends StatelessWidget {
  const sections({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF01156C),
            title: const Text("Know Your Rights"),
          ),
          body: const Column(
            children: [
              SizedBox(
                //to adjust height of tab-bar
                height: 60,
                child: TabBar(
                    //creating the tabs
                    indicatorColor:
                        Color(0xFF01156C), //to change the indicator color
                    tabs: [
                      Tab(
                          //first tab
                          iconMargin: EdgeInsets.only(top: 10),
                          icon: Icon(
                            Icons.person,
                            color: Colors.red,
                            size: 28,
                          ),
                          child: Text(
                            "Physical Abuse",
                            style: TextStyle(fontSize: 13, color: Colors.red),
                          )),
                      Tab(
                        //second tab
                        iconMargin: EdgeInsets.only(top: 10),
                        icon: Icon(
                          Icons.apartment_sharp,
                          color: Colors.red,
                          size: 28,
                        ),
                        child: Text(
                          "Child Labor",
                          style: TextStyle(fontSize: 13, color: Colors.red),
                        ),
                      ),
                      Tab(
                        //second tab
                        iconMargin: EdgeInsets.only(top: 10),
                        icon: Icon(
                          Icons.apartment_sharp,
                          color: Colors.red,
                          size: 28,
                        ),
                        child: Text(
                          "Child Trafficking",
                          style: TextStyle(fontSize: 13, color: Colors.red),
                        ),
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  first(),
                  second(),
                  third(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
