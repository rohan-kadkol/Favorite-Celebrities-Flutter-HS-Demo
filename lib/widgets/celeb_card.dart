import 'package:favorite_celebrity/data/celeb_anim.dart';
import 'package:favorite_celebrity/providers/celeb_provider.dart';
import 'package:favorite_celebrity/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

class CelebCard extends StatefulWidget {
  const CelebCard({Key? key, required this.celebAnim}) : super(key: key);

  final CelebAnim celebAnim;

  @override
  State<CelebCard> createState() => _CelebCardState();
}

class _CelebCardState extends State<CelebCard> {
  late RiveAnimationController? animationController;

  SMIInput<bool>? _state;

  void _onRiveInit(Artboard artboard) {}

  @override
  Widget build(BuildContext context) {
    _state?.change(widget.celebAnim.animState);

    return Container(
      // TODO (3): Add a Column
      // TODO (4): CrossAxisAlignment of center
      // TODO (5): Top padding SizedBox of height = 20.0
      // TODO (6): Add Text with widget.celebAnim.name
      // TODO (7): Style the Text with headline4 and color of white
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0),
          Text(
            widget.celebAnim.name,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
