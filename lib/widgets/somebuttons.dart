import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:www_kefo_no/services/urlhelper.dart';

class SomeButtons extends StatelessWidget{
  final String imgPath;
  final String url;

  SomeButtons(this.imgPath, this.url);
  UrlHelper _urlHelper = UrlHelper();

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
         _urlHelper.launchURL(url);
        },
      ),
    );
  }
}