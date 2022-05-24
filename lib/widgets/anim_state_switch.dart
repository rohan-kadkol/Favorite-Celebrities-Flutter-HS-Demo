import 'package:favorite_celebrity/data/celeb_anim.dart';
import 'package:flutter/material.dart';

class AnimStateSwitch extends StatelessWidget {
  const AnimStateSwitch({Key? key, required this.celebAnim}) : super(key: key);

  final CelebAnim celebAnim;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            celebAnim.anim,
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 10.0),
          Switch(
            value: celebAnim.animState,
            onChanged: (v) => celebAnim.onChange(context),
            inactiveTrackColor: Colors.grey,
          )
        ],
      ),
    );
  }
}
