import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutterfirstapp/Constants/color.dart';
import 'package:flutterfirstapp/model/series_model.dart';
import 'package:flutterfirstapp/widget/series_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var rng = Random();
  String currentImage = series[0].imagePath;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = 80;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 800),
              switchInCurve: Curves.easeInOutSine,
              child: Image.asset(
                currentImage,
                fit: BoxFit.fill,
                height: height,
                opacity: const AlwaysStoppedAnimation(0.4),
                key: ValueKey<String>(currentImage),
              ),
            ),
            ...List.generate(circleColors.length, (index) {
              return AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 1300,
                ),
                curve: Curves.easeInOut,
                left: rng.nextInt(width.toInt()).toDouble(),
                bottom: rng.nextInt(height.toInt()).toDouble(),
                child: Opacity(
                  opacity: 0.8,
                  child: AnimatedContainer(
                    margin: const EdgeInsets.all(20),
                    height: h,
                    width: h,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: circleColors[rng.nextInt(circleColors.length)],
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(0, 25),
                            blurRadius: 3,
                            spreadRadius: -10)
                      ],
                    ),
                    duration: const Duration(
                      milliseconds: 1300,
                    ),
                    curve: Curves.ease,
                  ),
                ),
              );
            }),
            Positioned(
                bottom: 50,
                right: 80,
                child: SizedBox(
                  height: 500,
                  width: 250,
                  child: PageView.builder(
                    itemCount: series.length,
                    onPageChanged: (value) {
                      setState(() {});
                    },
                    itemBuilder: (context, index) {
                      currentImage = series[index].imagePath;

                      return SeriesCard(
                        name: series[index].name,
                        description: series[index].description,
                        imagePath: series[index].imagePath,
                        stars: series[index].stars,
                        backgroundColor: series[index].backgroundColor,
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
