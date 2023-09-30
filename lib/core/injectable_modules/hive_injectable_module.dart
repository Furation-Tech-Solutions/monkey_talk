// Package imports:
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module

/// Hive Injectable Module to inject [HiveInterface] via DI
/// (Dependency injection)
abstract class HiveInjectableModule {
  /// Hive Library
  @LazySingleton()
  HiveInterface get hive => Hive;
}
