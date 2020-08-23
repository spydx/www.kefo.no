import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:www_kefo_no/services/assetshelper.dart';
import 'package:www_kefo_no/services/customtheme.dart';
import 'package:www_kefo_no/services/contanthelper.dart';
import 'package:www_kefo_no/services/urlhelper.dart';
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
      body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // header
                Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Image(
                          image: Image.asset(AssetsHelper.KEFO).image,
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
                    child: Container(
                      color: Colors.green,
                    )
                ),
                Flexible(
                  flex: 2,
                    child: Container(
                      color: Colors.blue,
                    ))
              ]
            )
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
