import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

final _defaultScaleCurve = CurveSpring();

class FFMotion extends StatefulWidget {
  final Widget child;
  final Function()? onPressed;
  final Function()? onLongPress;
  final Duration duration;
  final double scaleMinValue;
  final Curve? scaleCurve;
  final Curve opacityCurve;
  final double opacityMinValue;
  final bool enableFeedback;

  const FFMotion({
    super.key,
    required this.child,
    this.onPressed,
    this.enableFeedback = true,
    this.onLongPress,
    this.duration = const Duration(milliseconds: 300),
    this.scaleMinValue = 0.98,
    this.opacityMinValue = 0.99,
    this.scaleCurve,
    this.opacityCurve = Curves.ease,
  });

  @override
  State<FFMotion> createState() => _FFMotionState();
}

class _FFMotionState extends State<FFMotion>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scale;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);
    _scale = Tween<double>(begin: 1.0, end: 1.0).animate(_animationController);
    _opacity =
        Tween<double>(begin: 1.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> anim(
      {required double scale,
      required double opacity,
      Duration duration = Duration.zero}) async {
    _animationController.stop();
    _animationController.duration = duration;

    _scale = Tween<double>(
      begin: _scale.value,
      end: scale,
    ).animate(CurvedAnimation(
      curve: widget.scaleCurve ?? _defaultScaleCurve,
      parent: _animationController,
    ));
    _opacity = Tween<double>(
      begin: _opacity.value,
      end: opacity,
    ).animate(CurvedAnimation(
      curve: widget.opacityCurve,
      parent: _animationController,
    ));
    _animationController.reset();
    _animationController.forward();
  }

  Future<void> _onTapDown(_) {
    return anim(
      scale: widget.scaleMinValue,
      opacity: widget.opacityMinValue,
      duration: widget.duration,
    );
  }

  Future<void> _onTapUp(_) {
    return anim(
      scale: 1.0,
      opacity: 1.0,
      duration: widget.duration,
    );
  }

  Future<void> _onTapCancel(_) {
    return _onTapUp(_);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, child) {
        return Opacity(
          opacity: _opacity.value,
          child: Transform.scale(
            alignment: Alignment.center,
            scale: _scale.value,
            child: child,
          ),
        );
      },
      child: Listener(
        onPointerDown: _onTapDown,
        onPointerCancel: _onTapCancel,
        onPointerUp: _onTapUp,
        child: GestureDetector(
          onTap: () {
            if (widget.enableFeedback) {
              SystemSound.play(SystemSoundType.click);
            }
            widget.onPressed?.call();
          },
          onLongPress: widget.onLongPress,
          child: widget.child,
        ),
      ),
    );
  }
}

class CurveSpring extends Curve {
  final SpringSimulation sim;

  CurveSpring() : sim = _sim(70, 20);

  @override
  double transform(double t) => sim.x(t) + t * (1 - sim.x(1.0));
}

_sim(double stiffness, double damping) => SpringSimulation(
      SpringDescription.withDampingRatio(
        mass: 1,
        stiffness: stiffness,
        ratio: 0.7,
      ),
      0.0,
      1.0,
      0.0,
    );
