import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:www_kefo_no/models/projectmodel.dart';

import 'package:www_kefo_no/services/assetshelper.dart';
import 'package:www_kefo_no/services/customtheme.dart';
import 'package:www_kefo_no/services/contanthelper.dart';
import 'package:www_kefo_no/services/urlhelper.dart';
import 'package:www_kefo_no/widgets/projecttile.dart';
import 'package:www_kefo_no/widgets/somebuttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstantHelper.TITLE_BAR,
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context) ,
      home: MyHomePage(title: ConstantHelper.TITLE_WEB),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: [
          Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // header
                    Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Container(
                              height: 200,
                              child: Image(
                                image: Image.asset(AssetsHelper.KEFO).image,
                              ),
                            ),
                          ),
                        )
                    ),
                    // body
                    Flexible(
                      flex: 3,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                SomeButtons(AssetsHelper.GITHUB, UrlHelper.GITHUB),
                                SomeButtons(AssetsHelper.MEDIUM, UrlHelper.MEDIUM),
                                SomeButtons(AssetsHelper.LINKEDIN, UrlHelper.LINKEDIN),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage: Image.asset(AssetsHelper.AVATAR).image,
                                  radius: 100,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(widget.title, textScaleFactor: 3,),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                SomeButtons(AssetsHelper.FACEBOOK, UrlHelper.FACEBOOK),
                                SomeButtons(AssetsHelper.INSTAGRAM, UrlHelper.INSTAGRAM),
                                SomeButtons(AssetsHelper.TWITTER, UrlHelper.TWITTER),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // menu
                    Flexible(
                      flex: 2,
                      child: Center(child: Column(
                        children: [
                          Text("Projects",
                            textScaleFactor: 3,
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          ProjectTile(ProjectModel(
                              name: "VekoAppen",
                              year: "2020",
                              img: AssetsHelper.VEKO,
                              url: UrlHelper.VEKOAPPEN,
                              description: "The app for the Ekstremsportveko festival."
                                  "With this app you will get an overview of the program, where the events are in Voss area. "
                                  "It will also inform you about new changes in the program through out the festival. "
                                  "Create your of Favorite program and attend as much fun as possible."
                          )
                          ),
                        ],
                      )
                      ),
                    )
                  ]
              )
          ),
        ],
      )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
