import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final Widget GitHubIcon =
    SvgPicture.asset("src/icons/github-icon.svg", semanticsLabel: 'Acme Logo');

final Widget LinkedinIcon = SvgPicture.asset("src/icons/linkedin-icon.svg",
    semanticsLabel: 'Acme Logo');

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      textDirection: TextDirection.ltr,
      children: [
        ClipPath(
          child: Container(
            color: Color.fromRGBO(62, 157, 83, 1.0),
          ),
          clipper: CustomClipPath(),
        ),
        Column(
          textDirection: TextDirection.ltr,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.ltr,
                children: [
                  Text("ALAN JAHNEL",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(62, 157, 83, 1.0),
                          fontSize: 64,
                          fontFamily: 'MPLUSRounded1c')),
                  Row(
                    textDirection: TextDirection.ltr,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Text("bio",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: 'MPLUSRounded1c')),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Text("projetos",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: 'MPLUSRounded1c')),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Text("contato",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: 'MPLUSRounded1c')),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Text("artigos",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: 'MPLUSRounded1c')),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: Row(
                  textDirection: TextDirection.ltr,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            textDirection: TextDirection.ltr,
                            children: [
                              Column(
                                textDirection: TextDirection.ltr,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(30),
                                    child: GitHubIcon,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(30),
                                    child: LinkedinIcon,
                                  ),
                                ],
                              ),
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
                )
            )
          ],
        )
      ],
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(500, 0);
    path.lineTo(200, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

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
