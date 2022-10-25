import 'package:flutter/material.dart';
import 'package:split_bill/friends.dart';
import 'package:split_bill/neubox.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double foodAmt = 1000;
  double tip_amount = 0;
  double finalAmt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 123, 80),
        title: const Text("Bill Splitter"),
        centerTitle: true,
      ),
      floatingActionButton:

          ///floating button
          FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 241, 123, 80),
              child: const Icon(Icons.add)),
      body: Container(
        color: Color.fromARGB(255, 239, 238, 238),
        child: ListView(children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
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
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Total bill",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 82, 80, 80)),
                      ),
                      Text(
                        foodAmt.toString(),
                        // ignore: unnecessary_const
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            // ignore: prefer_const_constructors
                            color: Color.fromARGB(255, 82, 80, 80)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Tip",
                          // ignore: unnecessary_const
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 75, 75, 75))),
                      Slider(
                          min: 0,
                          max: 100,
                          divisions: 10,
                          activeColor: const Color.fromARGB(255, 241, 123, 80),
                          inactiveColor: Colors.grey,
                          value: tip_amount,
                          label: (tip_amount * 10).toString(),
                          onChanged: ((value) {
                            setState(() {
                              tip_amount = value;
                            });
                          })),
                      const SizedBox(
                        width: 0,
                      ),
                      // Text("${tip_amount.toString()}% "),
                      Text((tip_amount * 10).toString()),
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Total To Split",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 8, 8, 8)),
                      ),
                      Text(
                        (foodAmt + (tip_amount*10)).toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      )
                    ],
                  ),
                ],
              ))),
            )),
          ),
          Friends(
              finalAmt: (foodAmt + (tip_amount*10)), name: "John", percentage: "40%", toPay: "Rs 500", slider: "4"),
          Friends(
              finalAmt: (foodAmt + (tip_amount*10)), name: "Neha", percentage: "70%", toPay: "Rs 1500", slider: "7"),
          Friends(
              finalAmt: (foodAmt + (tip_amount*10)), name: "Eren", percentage: "30%", toPay: "Rs 300", slider: "3"),

          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: NeuBox(
          //       child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: [
          //           Column(
          //             children: [
          //               CircleAvatar(
          //                 backgroundImage:
          //                     AssetImage("assets/images/boy.png"),
          //                 radius: 35,
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               Text("John",
          //                   style: const TextStyle(
          //                       fontSize: 15,
          //                       fontWeight: FontWeight.bold,
          //                       color: Color.fromARGB(255, 45, 191, 244)))
          //             ],
          //           ),
          //           Column(
          //             children: [
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   SizedBox(
          //                     width: 10,
          //                   ),
          //                   Text("40%",
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: Color.fromARGB(255, 66, 66, 66))),
          //                   SizedBox(
          //                     width: 100,
          //                   ),
          //                   Text("Rs 500",
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: Color.fromARGB(255, 66, 66, 66))),
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   Slider(
          //                       min: 0,
          //                       max: 10,
          //                       activeColor:
          //                           const Color.fromARGB(255, 45, 191, 244),
          //                       inactiveColor: Colors.grey,
          //                       value: 5,
          //                       onChanged: ((value) {})),
          //                 ],
          //               )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   )),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: NeuBox(
          //       child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: [
          //           Column(
          //             children: [
          //               CircleAvatar(
          //                 backgroundImage:
          //                     AssetImage("assets/images/child.png"),
          //                 radius: 35,
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               Text("Neha",
          //                   style: const TextStyle(
          //                       fontSize: 15,
          //                       fontWeight: FontWeight.bold,
          //                       color: Color.fromARGB(255, 235, 190, 25)))
          //             ],
          //           ),
          //           Column(
          //             children: [
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   SizedBox(
          //                     width: 10,
          //                   ),
          //                   Text("70%",
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: Color.fromARGB(255, 66, 66, 66))),
          //                   SizedBox(
          //                     width: 100,
          //                   ),
          //                   Text("Rs 500",
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: Color.fromARGB(255, 66, 66, 66))),
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   Slider(
          //                       min: 0,
          //                       max: 10,
          //                       activeColor:
          //                           const Color.fromARGB(255, 235, 190, 25),
          //                       inactiveColor: Colors.grey,
          //                       value: 7,
          //                       onChanged: ((value) {})),
          //                 ],
          //               )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   )),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: NeuBox(
          //       child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: [
          //           Column(
          //             children: [
          //               CircleAvatar(
          //                 backgroundImage:
          //                     AssetImage("assets/images/man.png"),
          //                 radius: 35,
          //               ),
          //               SizedBox(
          //                 height: 10,
          //               ),
          //               Text("Eren",
          //                   style: const TextStyle(
          //                       fontSize: 15,
          //                       fontWeight: FontWeight.bold,
          //                       color: Color.fromARGB(255, 168, 20, 163)))
          //             ],
          //           ),
          //           Column(
          //             children: [
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   SizedBox(
          //                     width: 10,
          //                   ),
          //                   Text(
          //                     "30%",
          //                     style: TextStyle(
          //                         fontWeight: FontWeight.bold,
          //                         color: Color.fromARGB(255, 66, 66, 66)),
          //                   ),
          //                   SizedBox(
          //                     width: 100,
          //                   ),
          //                   Text("Rs 500",
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.bold,
          //                           color: Color.fromARGB(255, 66, 66, 66))),
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   Slider(
          //                       min: 0,
          //                       max: 10,
          //                       activeColor:
          //                           const Color.fromARGB(255, 168, 20, 163),
          //                       inactiveColor: Colors.grey,
          //                       value: 3,
          //                       onChanged: ((value) {})),
          //                 ],
          //               )
          //           ],
          //          )
          //       ],
          //      ),
          //   ),
          //  )),
          // ),
          // ListView(
          //   children: [
          //     Friends(
          //         name: "John", percentage: "40%", toPay: "Rs 500", slider: "7")
          //   ],
          // )
        ]),
      ),
    );
  }
}
