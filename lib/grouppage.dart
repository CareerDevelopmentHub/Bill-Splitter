import 'package:flutter/material.dart';
import 'package:split_bill/expenses.dart';
import 'package:split_bill/homepage.dart';

import 'neubox.dart';

class Groupage extends StatefulWidget {
  const Groupage({Key? key}) : super(key: key);

  @override
  State<Groupage> createState() => _GroupageState();
}

class _GroupageState extends State<Groupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 123, 80),
        title: const Text("Bill Splitter"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ExpenseTile(
              groupname: "Restaurant",
              des: "Bill SPlitting",
              Total: "RS 1500",
              received: "Rs 500"),
          ExpenseTile(
              groupname: "Manali Trip",
              des: "Went with Neha,Eren and Alex",
              Total: "RS 15,000",
              received: "Rs 700"),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
              onPressed: () {
                //show a dialog box
              },
              child: Text(
                "Add Expense",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(180, 45),
                  primary: Color.fromARGB(255, 241, 123, 80)),
            ),
          )
        ],
      ),
      //       body: Container(
      //           child: Column(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(15.0),
      //             child: GestureDetector(
      //               onTap: (() {
      //                 Navigator.push(
      //                     context, MaterialPageRoute(builder: (_) => Homepage()));
      //               }),
      //               child: NeuBox(
      //                   child: Padding(
      //                 padding: const EdgeInsets.all(12.0),
      //                 child: Container(

      //                     // ignore: sort_child_properties_last
      //                     child: Center(
      //                         child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       // ignore: prefer_const_literals_to_create_immutables
      //                       children: [
      //                         Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             const Text(
      //                               "Restaurant",
      //                               // ignore: prefer_const_constructors
      //                               style: TextStyle(
      //                                   fontSize: 35,
      //                                   fontWeight: FontWeight.bold,
      //                                   color: Color.fromARGB(255, 18, 17, 17)),
      //                             ),
      //                             Text("Bill Splitting"),
      //                           ],
      //                         ),

      //                       ],
      //                     ),

      //                     const SizedBox(
      //                       height: 30,
      //                     ),

      //                     // ignore: prefer_const_constructors
      //                     SizedBox(
      //                       height: 30,
      //                     ),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         Row(
      //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                           // ignore: prefer_const_literals_to_create_immutables
      //                           children: [
      //                             const Text(
      //                               "In Total",
      //                               style: TextStyle(
      //                                   fontSize: 25,
      //                                   fontWeight: FontWeight.bold,
      //                                   color: Color.fromARGB(255, 8, 8, 8)),
      //                             ),
      //                             const Text(
      //                               "Rs 1200",
      //                               style: TextStyle(
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold,
      //                                   color: Color.fromARGB(255, 34, 34, 34)),
      //                             )
      //                           ],
      //                         ),
      //                         Row(
      //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                           // ignore: prefer_const_literals_to_create_immutables
      //                           children: [
      //                             const Text(
      //                               "Received",
      //                               style: TextStyle(
      //                                   fontSize: 15,
      //                                   color: Color.fromARGB(255, 66, 66, 66)),
      //                             ),
      //                             const Text(
      //                               "Rs 500",
      //                               style: TextStyle(
      //                                   fontSize: 15,
      //                                   color: const Color.fromARGB(255, 66, 66, 66)),
      //                             )
      //                           ],
      //                         ),
      //                       ],
      //                     )
      //                   ],
      //                 ))),
      //               )),
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.all(15.0),
      //             child: InkWell(
      //               onTap: () {
      //                 Navigator.push(
      //                     context, MaterialPageRoute(builder: (_) => Homepage()));
      //               },
      //               child: NeuBox(
      //                   child: Padding(
      //                 padding: const EdgeInsets.all(12.0),
      //                 child: Container(

      //                     // ignore: sort_child_properties_last
      //                     child: Center(
      //                         child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       // ignore: prefer_const_literals_to_create_immutables
      //                       children: [
      //                         Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             const Text(
      //                               "GOA Trip",
      //                               // ignore: prefer_const_constructors
      //                               style: TextStyle(
      //                                   fontSize: 35,
      //                                   fontWeight: FontWeight.bold,
      //                                   color: Color.fromARGB(255, 18, 17, 17)),
      //                             ),
      //                             Text("Bill Splitting"),
      //                           ],
      //                         ),
      //                         // const Text(
      //                         //   "Rs 1000",
      //                         //   // ignore: unnecessary_const
      //                         //   style: const TextStyle(
      //                         //       fontSize: 20,
      //                         //       fontWeight: FontWeight.bold,
      //                         //       // ignore: prefer_const_constructors
      //                         //       color: Color.fromARGB(255, 82, 80, 80)),
      //                         // )
      //                       ],
      //                     ),

      //                     const SizedBox(
      //                       height: 30,
      //                     ),

      //                     // ignore: prefer_const_constructors
      //                     SizedBox(
      //                       height: 30,
      //                     ),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         Row(
      //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                           // ignore: prefer_const_literals_to_create_immutables
      //                           children: [
      //                             const Text(
      //                               "In Total",
      //                               style: TextStyle(
      //                                   fontSize: 25,
      //                                   fontWeight: FontWeight.bold,
      //                                   color: Color.fromARGB(255, 8, 8, 8)),
      //                             ),
      //                             const Text(
      //                               "Rs 15,000",
      //                               style: TextStyle(
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold,
      //                                   color: Color.fromARGB(255, 34, 34, 34)),
      //                             )
      //                           ],
      //                         ),
      //                         Row(
      //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                           // ignore: prefer_const_literals_to_create_immutables
      //                           children: [
      //                             const Text(
      //                               "Received",
      //                               style: TextStyle(
      //                                   fontSize: 15,
      //                                   color: Color.fromARGB(255, 66, 66, 66)),
      //                             ),
      //                             const Text(
      //                               "Rs 00",
      //                               style: TextStyle(
      //                                   fontSize: 15,
      //                                   color: const Color.fromARGB(255, 66, 66, 66)),
      //                             )
      //                           ],
      //                         ),
      //                       ],
      //                     )
      //                   ],
      //                 ))),
      //               )),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 150,
      //           ),
      //           ElevatedButton(
      //             onPressed: () {
      //               //show a dialog box
      //             },
      //             child: Text("Add Expense"),
      //             style: ElevatedButton.styleFrom(
      //                 fixedSize: Size(180, 45),
      //                 primary: Color.fromARGB(255, 241, 123, 80)),
      //           )
      //         ],
      //       )),
    );
  }
}
