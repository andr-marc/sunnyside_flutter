import 'package:flutter/material.dart';
import 'package:sunnyside/src/models/testimonial.dart';

import '../widgets/testimonal_card.dart';

class TestimonialsSection extends StatefulWidget {
  const TestimonialsSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<TestimonialsSection> createState() => _TestimonialsSectionState();
}

class _TestimonialsSectionState extends State<TestimonialsSection> {
  final List<Testimonial> testimonials = [];

  @override
  void initState() {
    super.initState();

    testimonials.add(Testimonial(
        image: 'assets/images/image-emily.jpg',
        body:
            'We put our trust in Sunnyside and they delivered, making sure our needs were met and deadlines were always hit.',
        name: 'Emily R.',
        job: 'Marketing Director'));
    testimonials.add(Testimonial(
        image: 'assets/images/image-thomas.jpg',
        body:
            "Sunnyside's enthusiasm coupled with their keen interest in our brand's success made it a satisfying and enjoyable experience.",
        name: 'Thomas S.',
        job: 'Chief Operating Officer'));
    testimonials.add(Testimonial(
        image: 'assets/images/image-jennie.jpg',
        body:
            'Incredible end result! Our sales increased over 400% when we worked with Sunnyside. Highly recommended!',
        name: 'Jennie F.',
        job: 'Business Owner'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: widget.size.height * 0.1),
            child: Text(
              'CLIENT TESTIMONIALS',
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    color: const Color(0xFFAFAFAE),
                    fontSize: 22,
                    letterSpacing: 2,
                  ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: testimonials.length,
            itemBuilder: (context, index) {
              return TestimonialCard(
                size: widget.size,
                image: testimonials[index].image,
                body: testimonials[index].body,
                name: testimonials[index].name,
                job: testimonials[index].job,
              );
            },
          ),
        ],
      ),
    );
  }
}
