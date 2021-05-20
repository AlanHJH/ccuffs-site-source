import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site_pessoal/sections/contato.dart';
import 'package:site_pessoal/sections/projetos.dart';

import 'sections/bio.dart';
import 'sections/artigos.dart';

import 'package:site_pessoal/components/home_fundo.dart';
import 'package:site_pessoal/components/social_button.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  bool _isVisible = true;

  void _changePage (int page) {
    if(page != _currentPage){
      setState(() {
        _isVisible = false;
      });
      Timer(Duration(milliseconds: 700), () => {
        setState(() {
          _currentPage = page;
          _isVisible = true;
        })
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: [
            Container(
              color: Color.fromRGBO(62, 157, 83, 0.1)
            ),
            ClipPath(
              child: Container(
                color: Color.fromRGBO(62, 157, 83, 1.0),
              ),
              clipper: HomeFundoPath(),
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
                            child: InkWell(
                              onTap: (){_changePage(0);},
                              child: Text("bio",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontFamily: 'MPLUSRounded1c'
                                  )
                              ),
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: InkWell(
                              onTap: (){_changePage(1);},
                              child: Text("projetos",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontFamily: 'MPLUSRounded1c'
                                  )
                              ),
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: InkWell(
                              onTap: (){_changePage(2);},
                              child: Text("contato",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontFamily: 'MPLUSRounded1c'
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: InkWell(
                              onTap: (){_changePage(3);},
                              child: Text("artigos",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontFamily: 'MPLUSRounded1c'
                                  )
                              ),
                            ),
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
                        Column(
                          textDirection: TextDirection.ltr,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GithubButton(),
                            LinkedInButton(),
                          ],
                        ),
                        // BioSection()
                        Expanded(
                            child: AnimatedOpacity(
                              opacity: _isVisible ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 600),
                              child: Stack(
                                children: [
                                  Visibility(
                                    child: BioSection(),
                                    visible: _currentPage == 0,
                                  ),
                                  Visibility(
                                    child: ProjetosSection(),
                                    visible: _currentPage == 1,
                                  ),
                                  Visibility(
                                    child: ContatoSection(),
                                    visible: _currentPage == 2,
                                  ),
                                  Visibility(
                                    child: ArtigosSection(),
                                    visible: _currentPage == 3,
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    )
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

