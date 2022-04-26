import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../settings/settings_view.dart';
import 'sections/footer_section.dart';
import 'sections/gallery_section.dart';
import 'sections/head_section.dart';
import 'sections/testimonials_section.dart';
import 'sections/who_we_are_section.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          width: size.width * 0.3,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadSection(size: size),
            WhoWeAreSection(size: size),
            TestimonialsSection(size: size),
            GallerySection(size: size),
            FooterSection(size: size)
          ],
        ),
      ),
    );
  }
}
