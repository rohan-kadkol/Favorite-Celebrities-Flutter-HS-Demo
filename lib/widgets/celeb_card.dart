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
  SMIInput<bool>? _state;

  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(artboard, 'State Machine 1');
    artboard.addController(controller!);
    _state = controller.findInput(widget.celebAnim.anim);
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
          Expanded(
            child: RiveAnimation.asset(
              widget.celebAnim.animPath,
              onInit: _onRiveInit,
            ),
          ),
        ],
      ),
    );
  }
}
