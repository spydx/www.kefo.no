import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:www_kefo_no/models/projectmodel.dart';
import 'package:url_launcher/url_launcher.dart';


class ProjectTile extends StatelessWidget{

  final ProjectModel p;

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
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: InkWell(
        child: RaisedButton(
          elevation: 10,
          onPressed: () {
            _launchUrl(p.url);
          },
          child: SizedBox(
            height: 250,
            width: 550,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: Column(children: [
                    CircleAvatar(
                      backgroundImage: Image.asset(p.img).image,
                      radius: 100),
                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(p.name,
                              textScaleFactor: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(p.year,
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 150,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 140,
                                  width: 290,
                                  child: Text.rich(
                                    TextSpan(
                                        text:p.description),
                                    overflow: TextOverflow.clip,
                                    maxLines: 5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}