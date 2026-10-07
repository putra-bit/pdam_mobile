import 'package:flutter/material.dart';
import 'package:pdam_mobile/screens/core/theme/appcolors.dart';

class Apptextfield extends StatelessWidget {
  //variable
  final String label;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  //initialized
  const Apptextfield({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.obscureText = false , 
    this.keyboardType,
    this.controller,
    this.suffixIcon
  });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.border,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 12),
              hintText: label,
              prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
              border: InputBorder.none,
              suffixIcon: suffixIcon
            ),
          ),
        ),
      ),
    );
  }
}