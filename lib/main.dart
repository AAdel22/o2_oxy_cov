import 'package:flutter/material.dart';
import 'package:o2_oxy_cov/Screens/Home/homePage.dart';

import 'package:o2_oxy_cov/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      initialRoute: HomePage.routeName,
      routes: routes,
    );
  }
}
