import 'package:flutter/material.dart';
import 'package:todo/Util/slide_to_page_route.dart';
import 'package:todo/core/constants/theme.dart';
import 'package:todo/view/first_open/welcom_page.dart';
import 'package:todo/widgets/first_open/boading_widget.dart';

class SecondBoading extends StatelessWidget {
  const SecondBoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.background,
        appBar: AppBar(
        title: GestureDetector(
            onTap: (){
               Navigator.push(
                    context,
                    SlidToPage(
                      page: const WelcomPage(),
                      onComplete: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomPage()));
                      },
                    ),
                  );
            },
            child: const Text("SKIP")),
          titleTextStyle:
              const TextStyle(color: Color(0xff464646), fontSize: 16),
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0.0,
        ),
                // u can find BoadingWidget() in lib\widgets\first_open

        body: const BoadingWidget(
          boandingPageNumber: 2,
          title: "Create daily routine",
          supTitle:
              "In Uptodo  you can create your personalized routine to stay productive",
          image: "assets/images/second_boanding.jpg",
        ));
  }
}
