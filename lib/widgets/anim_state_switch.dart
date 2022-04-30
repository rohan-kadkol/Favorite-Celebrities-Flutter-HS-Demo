import 'package:favorite_celebrity/data/celeb_anim.dart';
import 'package:flutter/material.dart';

class AnimStateSwitch extends StatelessWidget {
  const AnimStateSwitch({Key? key, required this.animState}) : super(key: key);

  final AnimState animState;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            animState.state,
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 10.0),
          Switch(
            value: animState.isActivated,
            onChanged: (v) => null,
            inactiveTrackColor: Colors.grey,
          )
        ],
      ),
    );
  }
}
