import 'package:flutter/material.dart';

class KeyValue extends StatelessWidget {
  final String keyText;
  final String value;

  const KeyValue({super.key, required this.keyText, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            keyText,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            value,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
