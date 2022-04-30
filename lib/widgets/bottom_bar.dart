import 'package:favorite_celebrity/data/celeb_anim.dart';
import 'package:favorite_celebrity/widgets/anim_state_switch.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key, required this.celebAnim}) : super(key: key);

  final CelebAnim celebAnim;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: Colors.grey.shade900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: celebAnim.animStates
            .map(
              (animState) => AnimStateSwitch(animState: animState),
            )
            .toList(),
      ),
    );
  }
}
