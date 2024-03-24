import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final String Function(String) validator;
  final _formKey = GlobalKey<FormState>();
  CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(icon),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            return validation();
          }),
    );
  }
}
