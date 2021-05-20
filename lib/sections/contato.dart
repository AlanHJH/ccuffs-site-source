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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Email: alanhenriquejahnel@gmail.com",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 45,
                          fontFamily: 'MPLUSRounded1c')
                  )
                ],
              ),
            )
        )
      ],
    );
  }
}
