import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/core/injectable_modules/injection_container.config.dart';
import '../utils.dart/hive_constants.dart';

final di = GetIt.I;

@InjectableInit()
void configureDeps() {
  di.init();
}

Future<void> configureHives() async {
  await Hive.initFlutter();
  await Hive.openBox<dynamic>(HiveConstants.userBox);
}
