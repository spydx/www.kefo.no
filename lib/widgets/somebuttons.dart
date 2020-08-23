import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class SomeButtons extends StatelessWidget{
  String imgPath;
  String url;

  SomeButtons(this.imgPath, this.url);

  _launchURL(var url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: FlatButton(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: Image
              .asset(imgPath)
              .image,
        ),
        onPressed: () {
          _launchURL(url);
        },
      ),
    );
  }
}