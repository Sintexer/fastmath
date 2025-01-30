import 'package:fastmath/widgets/home_nav_routing_page.dart';
import 'package:flutter/material.dart';

class FastMathApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fast Math',
      routes: {
        HomeNavRoutingPage.route: (context) => HomeNavRoutingPage()
      },
      initialRoute: HomeNavRoutingPage.route,
      debugShowCheckedModeBanner: false,
    );
  }
}