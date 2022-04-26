import 'package:flutter/material.dart';

import '../widgets/gallery_item.dart';

class GallerySection extends StatefulWidget {
  const GallerySection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<GallerySection> createState() => _GallerySectionState();
}

class _GallerySectionState extends State<GallerySection> {
  final List<GalleyItem> images = [];

  @override
  void initState() {
    super.initState();
    images
        .add(GalleyItem(image: 'assets/images/image-gallery-milkbottles.jpg'));
    images.add(GalleyItem(image: 'assets/images/image-gallery-orange.jpg'));
    images.add(GalleyItem(image: 'assets/images/image-gallery-cone.jpg'));
    images.add(GalleyItem(image: 'assets/images/image-gallery-sugarcubes.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      height: widget.size.width,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        children: List.generate(images.length, (index) {
          return Image.asset(
            images[index].image,
            fit: BoxFit.cover,
          );
        }),
      ),
    );
  }
}
