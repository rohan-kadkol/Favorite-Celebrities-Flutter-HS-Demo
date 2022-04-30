class CelebAnim {
  final String animPath;
  final List<AnimState> animStates;

  const CelebAnim({required this.animPath, required this.animStates});
}

class AnimState {
  final String state;
  final bool isActivated;

  const AnimState({required this.state, this.isActivated = false});
}
