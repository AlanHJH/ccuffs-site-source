import 'package:flutter/material.dart';
import 'package:site_pessoal/components/avatar.dart';

class BioSection extends StatelessWidget {
  const BioSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      children: [
        Expanded(
            flex: 1,
            child: Container(
                child: Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(100),
                          child: Avatar(),
                        ),
                      ),
                    )
                  ],
                )
            )
        ),
        Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Apaixonado por tecnologia, muito interessado no mundo open-source, adoro desafios e novidades",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontFamily: 'MPLUSRounded1c',
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
              ),
            )
        )
      ],
    );
  }
}
