import 'package:flutter/material.dart';


InputDecoration decorationclass(String label, String hint, IconData icon) {
  return InputDecoration(
    labelText: label,
    hintText: hint,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.orange.shade900,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.orange.shade700,
        width: 2,
      ),
    ),
    filled: true,
    suffixIcon: Icon(icon),
  );
}

