import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_single_line/src/app/app_view.dart';
import 'package:flutter_single_line/src/configs/app_setup.locator.dart';
import 'package:flutter_single_line/src/services/local/flavor_service.dart';
import 'package:package_info/package_info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // getting package
  final package = await PackageInfo.fromPlatform();

  setupLocator();

  // app flavor init
  FlavorService.init(package);

  runApp(AppView());
}
