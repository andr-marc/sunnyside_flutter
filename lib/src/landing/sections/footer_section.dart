import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/footer_icon_button.dart';
import '../widgets/footer_text_button.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF90D4C5),
      width: size.width,
      height: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          SvgPicture.asset(
            'assets/images/logo.svg',
            color: const Color(0xFF2A7362),
            width: size.width * 0.5,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Spacer(),
              FooterTextButton(text: 'About'),
              Spacer(),
              FooterTextButton(text: 'Services'),
              Spacer(),
              FooterTextButton(text: 'Projects'),
              Spacer(),
            ],
          ),
          const Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FooterIconButton(icon: 'assets/images/icons/icon-facebook.svg'),
              FooterIconButton(icon: 'assets/images/icons/icon-instagram.svg'),
              FooterIconButton(icon: 'assets/images/icons/icon-twitter.svg'),
              FooterIconButton(icon: 'assets/images/icons/icon-pinterest.svg'),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
