import 'package:flutter/material.dart';

class CardWithButton extends StatelessWidget {
  const CardWithButton({
    Key? key,
    required this.size,
    required this.title,
    required this.body,
    required this.color,
  }) : super(key: key);

  final Size size;
  final String title;
  final String body;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 60,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.06,
              horizontal: size.width * 0.02,
            ),
            child: Text(
              body,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Text(
            'LEARN MORE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Fraunces',
              decoration: TextDecoration.underline,
              decorationThickness: 20,
              decorationColor: color,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
