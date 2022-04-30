import 'package:favorite_celebrity/data/celeb_anim.dart';
import 'package:favorite_celebrity/widgets/celeb_card.dart';
import 'package:flutter/material.dart';

class CelebsPageView extends StatefulWidget {
  const CelebsPageView({Key? key}) : super(key: key);

  @override
  State<CelebsPageView> createState() => _CelebsPageViewState();
}

class _CelebsPageViewState extends State<CelebsPageView> {
  final List<CelebAnim> celebAnims = const [
    CelebAnim(
      animPath: "Taylor Swift",
      animStates: [
        AnimState(state: "Singing"),
        AnimState(state: "Playing Guitar")
      ],
    ),
    CelebAnim(
      animPath: "Kobe Bryant",
      animStates: [AnimState(state: "Shooting Hoops")],
    ),
    CelebAnim(
      animPath: "Elon Musk",
      animStates: [AnimState(state: "Buying Twitter")],
    ),
  ];

  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      print(pageController.page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: pageController,
        children: celebAnims
            .map((celebAnim) => CelebCard(celebAnim: celebAnim))
            .toList(),
      ),
    );
  }
}
