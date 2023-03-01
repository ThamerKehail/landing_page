import 'package:flutter/material.dart';
import 'package:landing_page/views/app/landing_page_app.dart';
import 'package:landing_page/views/web/landing_page_web.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case '/':
      return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth > 800) {
                  return const LandingPageWeb();
                } else {
                  return const LandingPageApp();
                }
              }));
    default:
      return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth > 800) {
                  return const LandingPageWeb();
                } else {
                  return const LandingPageApp();
                }
              }));
  }
}
