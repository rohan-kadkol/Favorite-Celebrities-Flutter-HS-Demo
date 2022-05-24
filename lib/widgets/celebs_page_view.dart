import 'package:favorite_celebrity/data/celeb_anim.dart';
import 'package:favorite_celebrity/providers/celeb_provider.dart';
import 'package:favorite_celebrity/widgets/celeb_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CelebsPageView extends StatefulWidget {
  const CelebsPageView({Key? key}) : super(key: key);

  @override
  State<CelebsPageView> createState() => _CelebsPageViewState();
}

class _CelebsPageViewState extends State<CelebsPageView> {
  @override
  Widget build(BuildContext context) {
    final List<CelebAnim> celebAnims = [
      CelebAnim(
        name: "Kobe Bryant",
        animPath: "anims/kobe_bryant_3.riv",
        anim: "Crossing",
        onChange: (c) =>
            Provider.of<CelebProvider>(context, listen: false).changeIsCross(),
        animState: context.watch<CelebProvider>().isCross,
      ),
      CelebAnim(
        name: "Elon Musk",
        animPath: "anims/elon_musk_3.riv",
        anim: "Buying Twitter",
        onChange: (c) =>
            Provider.of<CelebProvider>(context, listen: false).changeIsBuyingTwitter(),
        animState: context.watch<CelebProvider>().isBuyingTwitter,
      ),
      CelebAnim(
        name: "Taylor Swift",
        animPath: "anims/taylor_swift_3.riv",
        anim: "Performing",
        onChange: (c) =>
            Provider.of<CelebProvider>(context, listen: false).changeIsPerforming(),
        animState: context.watch<CelebProvider>().isPerforming,
      ),
    ];

    return Container(
    );
  }
}
