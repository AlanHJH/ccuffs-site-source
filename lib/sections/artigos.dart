import 'package:flutter/material.dart';

class ArtigosSection extends StatelessWidget {
  const ArtigosSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      children: [
        Expanded(
            child: Container(
              color: Colors.grey,
            )
        )
      ],
    );
  }
}
