import 'package:flutter/material.dart';

Widget mytextformfield(String hinttext, TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      hintText: hinttext,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8)
      )
    )
  );
}