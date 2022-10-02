import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:split_bill/grouppage.dart';
import 'package:split_bill/homepage.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 110, 89),
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
                image: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Image.asset("assets/images/billlady.jpg"),
                  ),
                ),
                title: "Splitting Bill",
                body: "Now splitting bill is super easy",
                decoration: PageDecoration(
                    pageColor: Colors.white,
                    titleTextStyle:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w500))),
            PageViewModel(
                image: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Image.asset("assets/images/2nd.jpg"),
                  ),
                ),
                title: "Split Bills equally or  unequally",
                body: "Low on budget? Ask your friends to help you out",
                decoration: PageDecoration(
                    pageColor: Colors.white,
                    titleTextStyle:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w500))),
            PageViewModel(
                image: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Image.asset("assets/images/3rd.jpg"),
                  ),
                ),
                title: "Make Groups",
                body: "Split bills without any hesitation among your friends",
                decoration: PageDecoration(
                    pageColor: Colors.white,
                    titleTextStyle:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w500))),
          ],
          dotsDecorator: DotsDecorator(activeColor: Colors.orange),
          onDone: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Groupage()));
          },
          done: Text(
            "Get Started",
            style: TextStyle(color: Color.fromARGB(255, 255, 99, 32)),
          ),
          next: Text(
            "Next",
            style: TextStyle(color: Color.fromARGB(255, 255, 99, 32)),
          ),
          skip: Text(
            "Skip",
            style: TextStyle(color: Color.fromARGB(255, 255, 99, 32)),
          ),
          // back: Text("Back"),
          showNextButton: true,
          showDoneButton: true,
          showSkipButton: true,
          // showBackButton: true,
        ),
      ),
    );
  }
}
