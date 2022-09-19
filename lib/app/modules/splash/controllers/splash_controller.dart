import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../shared/shared.dart';
import '../../../providers/providers.dart';
import '../../../routes/app_pages.dart' show Routes;

class SplashController extends GetxController {
  final token = Rxn<String?>();
  late Worker worker;
  final storage = Get.find<SharedPreferences>();
  // final connectivity = Get.find<Connectivity>();

  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 2));
    final isCurrent = await _isCurrentVersion();
    if (isCurrent == false) {
      _checkAuthStatus();
      // _showUpdateDialog();
    } else {
      _checkAuthStatus();
    }
  }

  logout() async {
    final storage = Get.find<SharedPreferences>();
    await storage.remove(StorageKeys.token.name);
    token.value = null;
  }

  /// CHECKING UPDATE VERSION
  Future<bool> _isCurrentVersion() async {
    try {
      final lastestVersion = await Get.find<ApiRepository>().getAppVersion();

      final localVersion = await _localVersion();
      return lastestVersion == localVersion;
    } on Exception {
      return true;
    }
  }

  _checkAuthStatus() {
    worker = ever<String?>(
      token,
      (tkn) {
        if (tkn == null) {
          Get.offAllNamed(Routes.HOME);
        } else {
          Get.offAllNamed(Routes.AUTH);
        }
      },
    );
    token.value = storage.getString(StorageKeys.token.name);
  }

  Future<String> _localVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  _showUpdateDialog() {
    Get.defaultDialog(
      barrierDismissible: false,
      title: 'Update Available',
      middleText: 'Please update the app to continue',
      textConfirm: 'Update',
      confirmTextColor: Colors.white,
      onConfirm: () {
        StoreLauncher().open(
          androidAppBundleId: 'com.eve_flashcards',
          appStoreId: 'id1520000000',
        );
      },
    );
  }

  @override
  void dispose() {
    worker.dispose();
    super.dispose();
  }
}
