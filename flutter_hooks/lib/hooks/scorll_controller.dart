import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ScrollController useScrollControllerForAnimation(
  AnimationController animationController,
) {
  return Hook.use(_ScrollControllerForAnimationHook(
      animationController: animationController));
}

class _ScrollControllerForAnimationHook extends Hook<ScrollController> {
  AnimationController animationController;
  _ScrollControllerForAnimationHook({this.animationController});
  @override
  _ScrollControllerForAnimationHookState createState() =>
      _ScrollControllerForAnimationHookState();
}

class _ScrollControllerForAnimationHookState
    extends HookState<ScrollController, _ScrollControllerForAnimationHook> {
  ScrollController _scrollController;
  @override
  void initHook() {
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      switch (_scrollController.position.userScrollDirection) {
        // Scrolling up - forward the animation (value goes to 1)
        case ScrollDirection.forward:
          hook.animationController.forward();
          break;
        // Scrolling down - reverse the animation (value goes to 0)
        case ScrollDirection.reverse:
          hook.animationController.reverse();
          break;
        // Idle - keep FAB visibility unchanged
        case ScrollDirection.idle:
          break;
      }
    });
    super.initHook();
  }

  @override
  ScrollController build(BuildContext context) => _scrollController;

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }
}
