// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home/homepage.dart';
import '../helper/neubox.dart';

class ExpenseTile extends StatefulWidget {
  final String groupname;
  final String des;
  final String Total;
  final String received;
  final Function(BuildContext)? settings;
  final Function(BuildContext)? onEdit;
  final Function(BuildContext)? onDelete;

  const ExpenseTile({
    Key? key,
    required this.groupname,
    required this.des,
    required this.Total,
    required this.received,
    required this.settings,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  State<ExpenseTile> createState() => _ExpenseTileState();
}

class _ExpenseTileState extends State<ExpenseTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GestureDetector(
          onTap: (() {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Homepage()));
          }),
          child: NeuBox(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(

                // ignore: sort_child_properties_last
                child: Center(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          widget.groupname,
                          style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 18, 17, 17)),
                        ),
                        Text(widget.des),
                      ],
                    ),
                    InkWell(
                        onTap: () => widget.settings,
                        child: const Icon(Icons.more_vert))
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),

                // ignore: prefer_const_constructors
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "In Total",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 8, 8, 8)),
                        ),
                        Text(
                          widget.Total,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 34, 34, 34)),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Received",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 66, 66, 66)),
                        ),
                        Text(
                          widget.received,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 66, 66, 66)),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ))),
          )),
        ),
      ),
    );
  }
}
