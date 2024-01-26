import 'package:flutter/material.dart';
import 'package:todo/Util/slide_to_page_route.dart';
import 'package:todo/core/constants/theme.dart';
import 'package:todo/view/first_open/onBoading/third_boading.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            color: ThemeColors.textColor,
            onPressed: () {
              Navigator.push(
                context,
                SlidToPage(
                  page: const ThirdBoading(),
                  onComplete: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThirdBoading()));
                  },
                ),
              );
            },
            icon: const Icon(Icons.arrow_back_ios_new_sharp),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //1
              const Text(
                "Welcome to UpTodo",
                style: TextStyle(
                  fontSize: 34,
                  color: ThemeColors.textColor,
                ),
              ),
              //2
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                width: 350,
                child: Text(
                  'Please login to your account or create new account to continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeColors.textColor.withOpacity(.8),
                  ),
                ),
              ),
              //3
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              //4
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeColors.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width * 0.9, 50.0)),
                child: Text(
                  "LOGIN",
                  style: const TextStyle(
                      color: ThemeColors.textColor, fontSize: 16),
                ),
              ),
              //5
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                          side: const BorderSide(
                              color: ThemeColors.primary, width: 2)),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.9, 50.0)),
                  child: const Text(
                    "CREATE ACCOUNT",
                    style: const TextStyle(
                        color: ThemeColors.textColor, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
