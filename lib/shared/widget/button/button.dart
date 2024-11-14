import 'package:flutter/material.dart';
import 'package:spk_dt_client/core.dart';

class Button extends StatefulWidget {
  const Button({
    super.key,
    this.isOutlineButton = false,
    this.isEnabled = true,
    this.color,
    required this.onPressed,
    required this.label,
  });

  final bool? isOutlineButton;
  final Function onPressed;
  final String label;
  final bool? isEnabled;
  final Color? color;
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    var widgetWidth = MediaQuery.of(context).size.width;
    var heightWidget = 45.0;
    return Container(
      width: widgetWidth,
      height: heightWidget,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color:
              widget.isEnabled! ? widget.color ?? primaryColor : secondaryColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          backgroundColor: widget.isEnabled!
              ? widget.isOutlineButton!
                  ? scaffoldBackgroundColor
                  : widget.color ?? primaryColor
              : secondaryColor,
          foregroundColor: widget.isEnabled!
              ? widget.isOutlineButton!
                  ? widget.color ?? primaryColor
                  : scaffoldBackgroundColor
              : secondaryTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              3,
            ),
          ),
        ),
        onPressed: () => widget.isEnabled! ? widget.onPressed() : null,
        child: Text(
          widget.label,
        ),
      ),
    );
  }
}
