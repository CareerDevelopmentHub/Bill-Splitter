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
  // final _controller;
  List expenses = [
    ["Restaurant", "Bill splitting", "15000", "700"],
    ["Trip", "Went with Friends", "15000", "700"],
  ];
  final _newgroupcontroller = TextEditingController();
  final _newdescontroller = TextEditingController();
  final _newamountcontroller = TextEditingController();
  final _newreceivedcontroller = TextEditingController();
  void deleteExpense(int index) {
    setState(() {
      expenses.removeAt(index);
    });
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            backgroundColor: Colors.grey[300],
            title: Text("ADD EXPENSES"),
            content: SingleChildScrollView(
              child: Expanded(
                child: Container(
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(45),
                  //     color: Colors.grey),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Group Name"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsetsDirectional.all(10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide:
                                        BorderSide(color: Colors.black54))),
                            controller: _newgroupcontroller,
                          ),
                        ),
                        //des
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Add description"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextFormField(
                              controller: _newdescontroller,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsetsDirectional.all(10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide:
                                          BorderSide(color: Colors.black54)))),
                        ),

                        //total amount
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Total Amount"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsetsDirectional.all(10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide:
                                          BorderSide(color: Colors.black54))),
                              keyboardType: TextInputType.number,
                              controller: _newamountcontroller),
                        ),

                        //receieved
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Received Amount"),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _newreceivedcontroller,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsetsDirectional.all(12),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide:
                                          BorderSide(color: Colors.black54)))),
                        ),
                        const SizedBox(
                          height: 12,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: savenewexpense,
                              child: Text(
                                "Save",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 241, 123, 80),
                                  minimumSize: Size(80, 40)),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  _newgroupcontroller.clear();
                                  _newdescontroller.clear();
                                  _newamountcontroller.clear();
                                  _newreceivedcontroller.clear();
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancel"),
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 241, 123, 80),
                                    minimumSize: Size(80, 40))),
                          ],
                        )
                      ]),
                ),
              ),
            ),
          );
        }));
  }

  void savenewexpense() {
    setState(() {
      expenses.add([
        _newgroupcontroller.text,
        _newdescontroller.text,
        _newamountcontroller.text,
        _newreceivedcontroller.text
      ]);
    });
    _newgroupcontroller.clear();
    _newdescontroller.clear();
    _newamountcontroller.clear();
    _newreceivedcontroller.clear();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 123, 80),
        title: const Text("Bill Splitter"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                return ExpenseTile(
                  groupname: expenses[index][0],
                  des: expenses[index][1],
                  // ignore: prefer_interpolation_to_compose_strings
                  Total: "\Rs ${expenses[index][2]}",
                  received: "\Rs ${expenses[index][3]}",
                  settings: (context) {},
                  onEdit: (context) {},
                  onDelete: (context) => deleteExpense(index),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ElevatedButton(
              onPressed: () {
                //show a dialog box
                _showDialog();
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
    );
  }
}
