import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtigosSection extends StatelessWidget {
  const ArtigosSection({Key key}) : super(key: key);

  final String _zona = 'https://github.com/AlanHJH/zona-finder';
  final String _amazon = 'https://github.com/AlanHJH/amazoncc-uffs';
  final String _dicite = 'https://github.com/AlanHJH/discite-api';

  void _launchzona() async =>
      await canLaunch(_zona) ? await launch(_zona) : throw 'Could not launch $_zona';

  void _launchamazon() async =>
      await canLaunch(_amazon) ? await launch(_amazon) : throw 'Could not launch $_amazon';

  void _launchdcite() async =>
      await canLaunch(_dicite) ? await launch(_dicite) : throw 'Could not launch $_dicite';

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      children: [
        Expanded(
            child: Container(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 50,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: <Widget>[
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(50),
                        child: Column(
                          children: [
                            Expanded(
                                child:Image.asset(
                                  "src/images/error-404.png",
                                  fit: BoxFit.contain,
                                )
                            ),
                            Text("404 not found",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'MPLUSRounded1c')
                            )
                          ],
                        )
                    ),
                  ),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(50),
                        child: Column(
                          children: [
                            Expanded(
                                child:Image.asset(
                                  "src/images/error-404.png",
                                  fit: BoxFit.contain,
                                )
                            ),
                            Text("404 not found",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'MPLUSRounded1c')
                            )
                          ],
                        )
                    ),
                  ),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(50),
                        child: Column(
                          children: [
                            Expanded(
                                child:Image.asset(
                                  "src/images/error-404.png",
                                  fit: BoxFit.contain,
                                )
                            ),
                            Text("404 not found",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'MPLUSRounded1c')
                            )
                          ],
                        )
                    ),
                  )
                ],
              ),
            )
        )
      ],
    );
  }
}
