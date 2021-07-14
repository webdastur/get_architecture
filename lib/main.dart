import 'package:flutter/material.dart';
import 'package:get_architecture/app.dart';
import 'package:get_architecture/data/services/root_service.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

main() async {
  await Hive.initFlutter();
  await RootService.init();
  runApp(App());
}
