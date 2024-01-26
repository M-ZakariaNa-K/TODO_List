import 'package:flutter/material.dart';
class SlidToPage extends PageRouteBuilder {
  final page;
  final Function onComplete;

  SlidToPage({this.page, required this.onComplete})
      : super(
          pageBuilder: (context, animation1, animation2) => page,
          transitionsBuilder: (context, animation1, animation2, child) {
            var begin = Offset(0.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.easeInBack;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation1.drive(tween);

            return FadeTransition(
              opacity: animation1,
              child: SlideTransition(
                position: offsetAnimation,
                child: child,
              ),
            );
          },
        );
}
