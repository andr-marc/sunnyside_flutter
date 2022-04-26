import 'package:flutter/material.dart';

import '../widgets/card_with_button.dart';
import '../widgets/container_with_bgimage.dart';

class WhoWeAreSection extends StatelessWidget {
  const WhoWeAreSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Image.asset(
            'assets/images/image-transform.jpg',
          ),
          CardWithButton(
            size: size,
            title: 'Transform your brand',
            body:
                'We are a full-service creative agency specializing in helping brands grow fast. Engage your clients through compelling visuals that do most of the marketing for you.',
            color: const Color(0x55DDDD00),
          ),
          Image.asset(
            'assets/images/image-stand-out.jpg',
          ),
          CardWithButton(
            size: size,
            title: 'Stand out to the right audience',
            body:
                "Using a collaborative formula of designers, researchers, photographers, videographers, and copywriters, we'll build and extend your brand in digital places.",
            color: const Color(0x52F74848),
          ),
          ContainerWithBGImage(
            size: size,
            accentColor: const Color(0xFF21534A),
            title: 'Graphic Design',
            body:
                "Great design makes you memorable. We deliver artwork that underscores your brand message and captures potential clients' attention.",
            image: 'assets/images/image-graphic-design.jpg',
          ),
          ContainerWithBGImage(
            size: size,
            accentColor: const Color(0xFF205369),
            title: 'Photography',
            body:
                'Increase your credibility by getting the most stunning, high-quality photos that improve your business image.',
            image: 'assets/images/image-photography.jpg',
          ),
        ],
      ),
    );
  }
}
