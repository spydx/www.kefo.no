import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  UrlHelper();

  launchURL(var url) async {
    if (await canLaunch(url)) {
       await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static const String FACEBOOK = "https://www.facebook.com/kenneth.fossen";
  static const String TWITTER = "https://twitter.com/xdyps";
  static const String INSTAGRAM = "https://instagr.am/spydx";
  static const String GITHUB = "https://github.com/spydx";
  static const String MEDIUM = "https://medium.com/@fossen.kenneth";
  static const String LINKEDIN = "https://linkedin.com/in/kenneth-fossen/";
  static const String VEKOAPPEN = "http://vekoappen.kefo.no";
}