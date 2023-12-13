import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      elevation: 0,
      color: Colors.blue.withOpacity(.2),
      child: Row(
        children: [
          // Lottie Animation
          Lottie.asset(
            "assets/lottie/ai_hand_waving.json",
            width: mq.width * .35,
          ),
          const Spacer(),

          // Title
          const Text(
            "Ai ChatBot",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
