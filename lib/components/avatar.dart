import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FittedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(450),
            child: Image.asset(
              "src/images/foto-perfil.jpg",
              fit: BoxFit.contain,
            ),
          )
      ),
    );
  }
}
