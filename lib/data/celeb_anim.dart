import 'package:flutter/cupertino.dart';

class CelebAnim {
  final String name;
  final String animPath;
  final String anim;
  final bool animState;
  final void Function(BuildContext context) onChange;

  const CelebAnim({
    required this.name,
    required this.animPath,
    required this.anim,
    required this.onChange,
    required this.animState,
  });
}

// class AnimState {
//   final String state;
//   final bool isActivated;

//   const AnimState({required this.state, this.isActivated = false});
// }
