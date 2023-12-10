import 'package:ai_assistant/helper/global.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset("assets/lottie/ai_ask_me.json", height: mq.height * .6),

          // Title
          const Text(
            "Ask Me Anything",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: .5),
          ),

          // for adding space
          SizedBox(
            height: mq.height * .01,
          ),

          // subtitle
          SizedBox(
            width: mq.width * .7,
            child: const Text(
              "I can be your best friend & you can ask me anything and I'll help you!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13.5, letterSpacing: .5, color: Colors.black54),
            ),
          ),
          const Spacer(),

          // dots
          Wrap(
            spacing: 10,
            children: List.generate(
              2,
              (i) => Container(
                width: 10,
                height: 8,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
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
            onPressed: () {},
            child: const Text("Next"),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
