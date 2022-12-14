import 'package:flutter/material.dart';

class TextFieldMarket extends StatefulWidget {
  TextFieldMarket({Key? key, required this.labelName, required this.hint})
      : super(key: key);
  final labelName;
  final hint;

  @override
  State<TextFieldMarket> createState() => _TextFieldMarketState();
}

class _TextFieldMarketState extends State<TextFieldMarket> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: widget.labelName,
        hintText: widget.hint,
      ),
    );
  }
}
