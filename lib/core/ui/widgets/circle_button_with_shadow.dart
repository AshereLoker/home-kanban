import 'package:flutter/material.dart';

class CircleButtonWithShadow extends StatelessWidget {
  final double buttonRadius;
  final double innerPadding;
  final void Function(BuildContext context) onTap;
  final Color buttonColor;
  final Widget? child;

  const CircleButtonWithShadow({
    super.key,
    required this.buttonRadius,
    required this.innerPadding,
    required this.onTap,
    required this.buttonColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: buttonColor.withOpacity(0.1),
            width: innerPadding,
          ),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: EdgeInsets.all(innerPadding),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: buttonColor,
              fixedSize: Size.fromRadius(buttonRadius),
              shape: const CircleBorder(),
            ),
            onPressed: () => onTap(context),
            child: child,
          ),
        ),
      );
}
