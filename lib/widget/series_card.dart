import 'package:flutter/material.dart';

class SeriesCard extends StatelessWidget {
  final String name;
  final String description;
  final String imagePath;
  final int stars;
  final Color backgroundColor;

  const SeriesCard({
    super.key,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.stars,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 300,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      clipBehavior: Clip.hardEdge,
      duration: const Duration(seconds: 1),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  name,
                  style:
                      const TextStyle(color: Colors.black, fontFamily: "Cairo"),
                ),
              )),
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  description,
                  textDirection: TextDirection.rtl,
                  style:
                      const TextStyle(color: Colors.black, fontFamily: "Cairo"),
                ),
              )),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                      stars,
                      (index) => const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 40,
                          ))
                ],
              )),
        ],
      ),
    );
  }
}
