import 'package:flutter/material.dart';

import 'app/presentation/page/home_page.dart';
import 'app/presentation/widgets/route.dart';
import 'core/util/constants.dart' as constant;
import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: constant.home,
      onGenerateRoute: Router.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'CatatinApp',),
    );
  }
}
