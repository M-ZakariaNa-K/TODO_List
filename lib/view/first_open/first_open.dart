import 'package:flutter/material.dart';
import 'package:todo/Util/slide_to_page_route.dart';
import 'package:todo/core/constants/theme.dart';
import 'package:todo/view/first_open/onBoading/first_boading.dart';

class FirstOpen extends StatefulWidget {
  const FirstOpen({super.key});

  @override
  State<FirstOpen> createState() => _FirstOpenState();
}

class _FirstOpenState extends State<FirstOpen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Go to HomePage() by replacing homepage() to the real name of class
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        SlidToPage(
          page: const FirstBoading(),
          onComplete: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const FirstBoading()));
          },
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                width: 100,
                child: Image.asset(
                  "assets/images/markupFirstScreen.png",
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                "UpTodo",
                style: TextStyle(
                    color: ThemeColors.textColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}
