import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: RichText(
              text: TextSpan(
                  text: "-Knock Knock",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontFamily: 'WelcomeFont', fontSize: 48),
                  children: const [
                    TextSpan(
                        text: "\n- Who's there ?",
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                    TextSpan(text: "\n- Our Tasks :)")
                  ]),
              textAlign: TextAlign.end),
        ),
        SizedBox.square(
            dimension: 150, child: Image.asset('assets/images/arrows.png'))
      ],
    );
  }
}
