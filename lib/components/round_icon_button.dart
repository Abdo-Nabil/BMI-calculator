import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    @required this.icon,
    @required this.onPressed,
    @required this.onTapDown,
    @required this.onTapUp,
    @required this.onTapCancel,
  });

  final IconData icon;
  final Function onPressed;
  final Function onTapDown;
  final Function onTapUp;
  final Function onTapCancel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: RawMaterialButton(
        elevation: 0.0,
        child: Icon(icon),
        onPressed: onPressed,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
      ),
      onTapDown: (_) {
        onTapDown();
      },
      onTapUp: (_) {
        onTapUp();
      },
      onTapCancel: () {
        onTapCancel();
      },
    );
  }
}
