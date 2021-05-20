import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class LinkedInIcon extends StatelessWidget {
  const LinkedInIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("src/icons/linkedin-icon.svg", semanticsLabel: 'Acme Logo');
  }
}


class GitHubIcon extends StatelessWidget {
  const GitHubIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("src/icons/github-icon.svg", semanticsLabel: 'Acme Logo');
  }
}

