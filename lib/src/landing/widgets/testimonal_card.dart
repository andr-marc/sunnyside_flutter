import 'package:flutter/material.dart';

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({
    Key? key,
    required this.size,
    required this.image,
    required this.body,
    required this.name,
    required this.job,
  }) : super(key: key);

  final Size size;
  final String image;
  final String body;
  final String name;
  final String job;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: size.height * 0.1),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(image),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
            child: Text(
              body,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    height: 2,
                    color: const Color(0xFF656668),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              name,
              style:
                  Theme.of(context).textTheme.headline2?.copyWith(fontSize: 22),
            ),
          ),
          Text(
            job,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: const Color(0xFFAFAFAE),
                ),
          ),
        ],
      ),
    );
  }
}
