import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_drownsi/main.dart';
import '../drownsiness_app_theme.dart';

class ButtonToLogout extends StatelessWidget {
  final AnimationController animationController;
  final Animation<double> animation;
  final FlatButton buttonLogout;

  const ButtonToLogout({Key? key, required this.animationController, required this.animation,required this.buttonLogout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 200, right: 22, top: 12, bottom: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: buttonLogout,
                            ),
                            Expanded(
                              child: SizedBox(
                                width: 10,
                              ),
                            ),
                          ],
                        )
                  ),
                ));
      },
    );
  }
}