import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'icons.dart';

String _urlLinkedin = 'https://www.linkedin.com/in/alanhjh/';
String _urlGit = 'https://github.com/AlanHJH/';

class GithubButton extends StatelessWidget {
  const GithubButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: InkWell(
        child: GitHubIcon(),
        onTap: _launchURL,
      ),
    );
  }

  void _launchURL() async =>
      await canLaunch(_urlGit) ? await launch(_urlGit) : throw 'Could not launch $_urlGit';
}

class LinkedInButton extends StatelessWidget {
  const LinkedInButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: InkWell(
        child: LinkedInIcon(),
        onTap: _launchURL
      ),
    );
  }

  void _launchURL() async =>
      await canLaunch(_urlLinkedin) ? await launch(_urlLinkedin) : throw 'Could not launch $_urlLinkedin';
}

