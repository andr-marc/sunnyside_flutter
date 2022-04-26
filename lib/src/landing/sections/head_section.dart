import 'package:flutter/material.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.75,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/image-header.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Text(
            'WE ARE CREATIVES',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            'assets/images/icons/icon-arrow-down.png',
            height: size.height * 0.15,
          ),
        ],
      ),
    );
  }
}
