import 'dart:developer';

import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/model/onboard.dart';
import 'package:ai_assistant/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = PageController();

    final list = [
      Onboard(
          title: "Ask Me Anything",
          subtitle:
              "I can be your best friend & you can ask me anything and I'll help you!",
          lottie: "ai_ask_me"),
      Onboard(
          title: "Imagination to Reality",
          subtitle:
              "Just Imagine anything & let me know, I will create something wonderfull for you!",
          lottie: "ai_play"),
    ];

    return Scaffold(
        body: PageView.builder(
      controller: c,
      itemCount: list.length,
      itemBuilder: (ctx, ind) {
        final isLast = ind == list.length - 1;
        return Column(
          children: [
            Lottie.asset("assets/lottie/${list[ind].lottie}.json",
                height: mq.height * .6, width: isLast ? mq.width * .7 : null),

            // Title
            Text(
              list[ind].title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: .5),
            ),

            // for adding space
            SizedBox(
              height: mq.height * .01,
            ),

            // subtitle
            SizedBox(
              width: mq.width * .7,
              child: Text(
                list[ind].subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 13.5, letterSpacing: .5, color: Colors.black54),
              ),
            ),
            const Spacer(),

            // dots
            Wrap(
              spacing: 10,
              children: List.generate(
                list.length,
                (i) => Container(
                  width: i == ind ? 15 : 10,
                  height: 8,
                  decoration: BoxDecoration(
                      color: i == ind ? Colors.blue : Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ),
            const Spacer(),
            // button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  elevation: 0,
                  textStyle:
                      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  minimumSize: Size(mq.width * .4, 50)),
              onPressed: () {
                if (isLast) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomeScreen()));
                } else {
                  c.nextPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.ease);
                }
              },
              child: Text(isLast ? "Finish" : "Next"),
            ),

            const Spacer(flex: 2),
          ],
        );
      },
    ));
  }
}
