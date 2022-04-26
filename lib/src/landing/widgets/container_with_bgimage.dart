import 'package:flutter/material.dart';

class ContainerWithBGImage extends StatelessWidget {
  const ContainerWithBGImage({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.body,
    required this.accentColor,
  }) : super(key: key);

  final Size size;
  final String image;
  final String title;
  final String body;
  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.8,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(color: accentColor),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.03,
              bottom: size.height * 0.1,
              left: 20,
              right: 20,
            ),
            child: Text(
              body,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: accentColor,
                    height: 1.5,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
