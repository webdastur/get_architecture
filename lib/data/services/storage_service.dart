import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class StorageService {
  late final Box _box;

  static StorageService get to => Get.find<StorageService>();

  static Future<void> init() async {
    await Get.putAsync<StorageService>(() async {
      final storageService = StorageService();
      await storageService.create();
      return storageService;
    }, permanent: true);
  }

  Future<void> create() async {
    _box = await Hive.openBox('app');
  }

  String getLocale() {
    return _box.get(_StorageKeys.LOCALE, defaultValue: 'uz_UZ');
  }

  Future<void> setLocale(Locale locale) async {
    await _box.put(_StorageKeys.LOCALE, locale.toString());
  }
}

class _StorageKeys {
  static const LOCALE = 'locale';
}
