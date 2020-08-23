import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:www_kefo_no/models/projectmodel.dart';
import 'package:url_launcher/url_launcher.dart';


class ProjectTile extends StatelessWidget{

  ProjectModel p;

  ProjectTile(this.p);

  _launchUrl(var url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Colors.blue,
        child: Text(p.name
        ),
      ),
    );
  }
}