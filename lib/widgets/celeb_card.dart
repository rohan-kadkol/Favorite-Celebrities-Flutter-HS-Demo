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

  void _onRiveInit(Artboard artboard) {
    // TODO (4): Get controller from StateMachineController.fromArtboard(artboard, 'State Machine 1')
    // TODO (5): Add controller to artboard
    // TODO (6): Get state from controller.findInput(widget.celebAnim.anim)
  }

  @override
  Widget build(BuildContext context) {
    _state?.change(widget.celebAnim.animState);

    return Container(
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
          // TODO (1): Add an expanded
          // TODO (2): In Expanded - RiveAnimation.asset(widget.celebAnim.animPath)
          // TODO (3): onInit = _onRiveInit
        ],
      ),
    );
  }
}
