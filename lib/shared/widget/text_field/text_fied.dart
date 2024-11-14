// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spk_dt_client/shared/util/thousands_formatter/thousands_formatter.dart';

class QTextField extends StatefulWidget {
  const QTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.validator,
    this.isObscure = false,
    this.isEnable = true,
    this.value,
    required this.onChanged,
    this.isNumberOnly,
    this.errorText,
  });

  final String? hintText;
  final bool? isNumberOnly;
  final bool? isEnable;
  final bool? isObscure;
  final String? value;
  final String? errorText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String) onChanged;

  @override
  State<QTextField> createState() => _QTextFieldState();
}

class _QTextFieldState extends State<QTextField> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    Widget icon = Icon(
      visible ? Icons.visibility_off : Icons.visibility,
    );

    String initValue = widget.value ?? "";

    if (widget.isObscure!) {
      if (visible) {
        icon = InkWell(
            onTap: () {
              visible = false;
              setState(() {});
            },
            child: icon);
      } else {
        icon = InkWell(
            onTap: () {
              visible = true;
              setState(() {});
            },
            child: icon);
      }
    }

    return Container(
        margin: const EdgeInsets.only(
          bottom: 20.0,
        ),
        child: TextFormField(
          enabled: widget.isEnable,
          keyboardType:
              widget.isNumberOnly ?? false ? TextInputType.number : null,
          inputFormatters: widget.isNumberOnly ?? false
              ? <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  ThousandsFormatter()
                ]
              : null,
          obscureText: visible == false && widget.isObscure!,
          validator: (value) {
            var error = widget.validator!(value);
            if (error != null) {
              setState(() {});
              return error;
            }
            return null;
          },
          onChanged: (value) => widget.onChanged(value),
          initialValue: initValue,
          decoration: InputDecoration(
            errorText: widget.errorText,
            errorMaxLines: 2,
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                  )
                : null,
            suffixIcon: widget.isObscure!
                ? icon
                : widget.suffixIcon != null
                    ? Icon(
                        widget.suffixIcon,
                      )
                    : null,
          ),
        ));
  }
}
