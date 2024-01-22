import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class AnimationButtonEffect extends StatefulWidget {
  final bool disabled;
  final Function onTap;
  final bool isGrey;
  final bool isLoading;
  final bool isPositioned;
  final Widget child;
  const AnimationButtonEffect(
      {Key? key,
      this.disabled = false,
      required this.onTap,
      this.isGrey = false,
      this.isLoading = false,
      required this.child,
      this.isPositioned = false})
      : super(key: key);

  @override
  State<AnimationButtonEffect> createState() => _AnimationButtonEffectState();
}

class _AnimationButtonEffectState extends State<AnimationButtonEffect>
    with TickerProviderStateMixin {
  AnimationController? _controllerA;

  var squareScaleA = 0.95;

  @override
  void initState() {
    _controllerA = AnimationController(
      vsync: this,
      lowerBound: 0.95,
      upperBound: 1.0,
      duration: const Duration(milliseconds: 80),
    );
    _controllerA!.addListener(() {
      setState(() {
        squareScaleA = _controllerA!.value;
      });
    });

    _controllerA!.forward(from: 0.0);
    super.initState();
  }

  @override
  void dispose() {
    _controllerA!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: widget.isPositioned
          ? HitTestBehavior.translucent
          : HitTestBehavior.deferToChild,
      onTap: () {
        if (!widget.disabled) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
          widget.onTap();
        }
      },
      child: Listener(
        behavior: HitTestBehavior.opaque,
        onPointerDown: (_) {
          _controllerA!.reverse();
        },
        onPointerUp: (_) {
          _controllerA!.forward(from: 1.0);
        },
        child: Transform.scale(
          scale: squareScaleA,
          child: Stack(
            children: [
              widget.child,
              widget.isLoading
                  ? Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: JumpingDotsProgressIndicator(
                        // dotSpacing: 5,
                        numberOfDots: 3,
                        fontSize: 55.0,
                        color: const Color(0xff1A1A1A),
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
