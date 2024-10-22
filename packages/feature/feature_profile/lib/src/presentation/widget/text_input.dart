import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String label;
  final String value;
  final String hint;
  final String error;
  final int maxLines;

  const TextInput({
    super.key,
    this.label = '',
    this.value = '',
    this.hint = '',
    this.error = '',
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(.2),
                width: 0.5,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
              ),
            ),
            fillColor: Colors.grey.withOpacity(.1),
            filled: true,
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            error: Text(
              error,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          maxLines: maxLines,
        ),
      ],
    );
  }
}
