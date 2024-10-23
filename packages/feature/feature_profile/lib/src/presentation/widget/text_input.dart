import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String label;
  final String value;
  final String hint;
  final String error;
  final int maxLines;
  final bool isEnabled;

  const TextInput({
    super.key,
    this.label = '',
    this.value = '',
    this.hint = '',
    this.error = '',
    this.maxLines = 1,
    this.isEnabled = true,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controller.text = widget.value;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _controller,
          enabled: widget.isEnabled,
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
            hintText: widget.hint,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            error: Text(
              widget.error,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          maxLines: widget.maxLines,
        ),
      ],
    );
  }
}
