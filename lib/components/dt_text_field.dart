import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DTTextField extends StatefulWidget {
  final String? label;
  final String hintText;
  final String placeholder;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? borderColor;
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? borderWidth;
  final Color? textColor;
  TextStyle? hintStyle;
  TextStyle? textStyle;
  final Color? suffixIconColor;
  final Color? cursorColor;
  final TextEditingController? controller;
  final Function(DateTime)? onDateSelected;

  DTTextField({
    this.controller,
    this.label,
    this.hintText = "",
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.borderColor,
    this.suffixIcon,
    this.width,
    this.height,
    this.borderRadius,
    this.textColor,
    this.hintStyle,
    this.textStyle,
    this.borderWidth,
    required this.placeholder,
    this.suffixIconColor,
    this.cursorColor,
    this.onDateSelected,  DropdownButtonFormField<String>? child,
  });

  @override
  State<DTTextField> createState() => _DTTextFieldState();
}

class _DTTextFieldState extends State<DTTextField> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != DateTime.now()) {
      widget.onDateSelected?.call(picked);
      setState(() {
        widget.controller?.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obscureText && !_isPasswordVisible,
        keyboardType: widget.keyboardType,
        onTap: () {
          if (widget.onDateSelected != null) {
            _selectDate(context);
          }
        },
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.placeholder,
          hintStyle: widget.hintStyle,
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          suffixIcon: widget.obscureText
              ? InkWell(
            onTap: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
            child: Icon(
              _isPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: widget.suffixIconColor,
            ),
          )
              : (widget.suffixIcon != null
              ? Icon(
            widget.suffixIcon,
            color: widget.suffixIconColor,
          )
              : null),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0),
            borderSide: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
              width: widget.borderWidth ?? 0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0),
            borderSide: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
              width: widget.borderWidth ?? 0,
            ),
          ),
        ),
        cursorColor: Theme.of(context).brightness == Brightness.dark
            ? Color(0xffFFFFFF)
            : Color(0xff000000),
      ),
    );
  }
}