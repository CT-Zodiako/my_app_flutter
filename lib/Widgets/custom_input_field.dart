import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardtype;
  final bool obscureText;

  final String formPropiety;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardtype,
    this.obscureText = false,
    required this.formPropiety,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardtype,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formPropiety] = value;
      },
      validator: (value) {
        if (value == null) return 'El campo es requierido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: Icon(Icons.group_outlined),
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //     borderSide: BorderSide(color: Colors.green)),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.only(
        //   bottomLeft: Radius.circular(10),
        //   topRight: Radius.circular(10),
        // ))
      ),
    );
  }
}
