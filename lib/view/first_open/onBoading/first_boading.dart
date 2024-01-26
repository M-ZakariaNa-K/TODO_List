import 'package:flutter/material.dart';
import 'package:todo/Util/slide_to_page_route.dart';
import 'package:todo/core/constants/theme.dart';
import 'package:todo/view/first_open/first_open.dart';
import 'package:todo/view/first_open/welcom_page.dart';
import 'package:todo/widgets/first_open/boading_widget.dart';

class FirstBoading extends StatelessWidget {
  const FirstBoading({super.key});

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
          boandingPageNumber: 1,
          title: "Manage your tasks",
          supTitle:
              "You can easily manage all of your daily tasks in DoMe for free",
          image: "assets/images/first_boanding.jpg",
        ));
  }
}
