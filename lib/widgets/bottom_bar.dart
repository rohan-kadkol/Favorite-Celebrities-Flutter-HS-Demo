import 'package:favorite_celebrity/data/celeb_anim.dart';
import 'package:favorite_celebrity/providers/celeb_provider.dart';
import 'package:favorite_celebrity/widgets/anim_state_switch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key, required this.celebAnim}) : super(key: key);

  final CelebAnim celebAnim;

  @override
  Widget build(BuildContext context) {
    return Container(
      // TODO (2): height = 50.0
      // TODO (3): background color: Color.grey.shade900
      // TODO (4): Center with AnimStateSwitch with celebAnim
      height: 50.0,
      color: Colors.grey.shade900,
      child: Center(
        child: AnimStateSwitch(celebAnim: celebAnim),
      ),
    );
  }
}
