import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/util/constants.dart' as constant;
import '../page/home_page.dart';
import '../page/landing_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case constant.home:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case constant.landing:
        return MaterialPageRoute(builder: (_) => LandingPage());
        break;
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
