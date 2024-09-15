import 'package:bookly_app/Features/home/presentation/view/widgets/placeholder_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookItemPlaceholder extends StatelessWidget {
  const BookItemPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              const PlaceholderImage(),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: 20,
                      color: Colors.grey[300], // Use a standard grey color
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 100,
                      height: 14,
                      color: Colors.grey[300], // Use a standard grey color
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 16,
                          color: Colors.grey[300], // Use a standard grey color
                        ),
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 14,
                              color:
                                  Colors.grey[300], // Use a standard grey color
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 30,
                              height: 14,
                              color:
                                  Colors.grey[300], // Use a standard grey color
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildPlaceholerImage() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Image.asset("assets/images/test_image.png")),
  );
}
