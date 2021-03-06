import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_single_line/src/base/utils/Constants.dart';
import 'package:flutter_single_line/src/services/local/navigation_service.dart';
import 'package:flutter_single_line/src/views/home/home_view.dart';

class AppView extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appTitle,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavService.onGenerateRoute,
      navigatorKey: NavService.key,
      home: HomeView(),
      builder: (context, child) {
        return Stack(
          children: [child!],
        );
      },
    );
  }
}
