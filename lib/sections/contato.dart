import 'package:flutter/material.dart';

class ContatoSection extends StatelessWidget {
  const ContatoSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      children: [
        Expanded(
            child: Container(
              color: Colors.blue,
            )
        )
      ],
    );
  }
}
