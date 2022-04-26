import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterIconButton extends StatelessWidget {
  const FooterIconButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SvgPicture.asset(
        icon,
        color: const Color(0xFF2A7362),
      ),
    );
  }
}
