import 'package:ecocycle_app/core/constant.dart';
import 'package:ecocycle_app/features/on_boarding/widgets/walk_througth.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  int pageIndex = 0;

  final PageController pageController = PageController();

  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        pageIndex = pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: pageController,
          children: [
            WalkThrougth(
                title: 'Every small effort counts;recycle what you can',
                image: 'assets/images/amico.png'),
            WalkThrougth(
                title: 'Turn old into new – recycle for a better world',
                image: 'assets/images/cuate.png'),
            WalkThrougth(
                title: 'Be part of the solution, not the pollution',
                image: 'assets/images/pana.png')
          ],
          onPageChanged: (value) {
            pageIndex == value;
          },
        ),
        Positioned(
          top: 17,
          right: 15,
          child: TextButton(
              onPressed: () {
                if (pageIndex == 0) {
                  pageController.jumpToPage(2);
                } else {
                  pageController.jumpToPage(--pageIndex);
                }
              },
              child: Text('Skip',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600))),
        ),
        Positioned(
          bottom: 40,
          left: 25,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: const WormEffect(
                dotWidth: 70,
                dotHeight: 11,
                spacing: 6,
                dotColor: Colors.grey,
                activeDotColor: kPrimaryColor),
            onDotClicked: (pageIndex) {
              pageController.jumpToPage(pageIndex);
            },
          ),
        ),
      ],
    ));
  }
}
