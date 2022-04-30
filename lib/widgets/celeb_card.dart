import 'package:favorite_celebrity/data/celeb_anim.dart';
import 'package:favorite_celebrity/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class CelebCard extends StatelessWidget {
  const CelebCard({Key? key, required this.celebAnim}) : super(key: key);

  final CelebAnim celebAnim;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: FlutterLogo()),
          BottomBar(
            celebAnim: celebAnim,
          )
        ],
      ),
    );
  }
}
