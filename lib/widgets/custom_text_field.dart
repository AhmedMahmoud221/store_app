import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    this.onChanged,
    this.hintText,
    this.obscureText = false,
  });

  final Function(String)? onChanged;
  final String? hintText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),

      obscureText: obscureText!,
      validator: (data){
        if(data == null || data.isEmpty){
          return 'field is required';
        }
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular( 10.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular( 10.0),
            ),
      ),
    );
  }
}
