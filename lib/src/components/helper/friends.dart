// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'neubox.dart';

class Friends extends StatefulWidget {
  final String name;
  final String percentage;
  final String toPay;
  final String slider;
  const Friends({
    Key? key,
    required this.name,
    required this.percentage,
    required this.toPay,
    required this.slider,
  }) : super(key: key);

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: NeuBox(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/boy.png"),
                      radius: 35,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("John",
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 45, 191, 244)))
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text("40%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 66, 66, 66))),
                        SizedBox(
                          width: 100,
                        ),
                        Text("Rs 500",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 66, 66, 66))),
                      ],
                    ),
                    Row(
                      children: [
                        Slider(
                            min: 0,
                            max: 10,
                            activeColor:
                                const Color.fromARGB(255, 45, 191, 244),
                            inactiveColor: Colors.grey,
                            value: 7,
                            onChanged: ((value) {})),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
