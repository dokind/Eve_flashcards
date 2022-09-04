import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class StoreLauncher {
  static const _playMarketUrl = '://play.google.com/store/apps/details?id=';
  static const _appStoreUrlIOS = 'https://apps.apple.com/app/id';

  void open({
    String? androidAppBundleId,
    String? appStoreId,
  }) async {
    if (Platform.isIOS) {
      await _openUrl('$_appStoreUrlIOS$appStoreId');
      return;
    }
    if (Platform.isAndroid) {
      await _openUrl('$_playMarketUrl$androidAppBundleId');
      return;
    } else {
      throw UnsupportedError('Platform not supported');
    }
  }

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
        return;
      }
    } on Exception catch (e) {
      throw Exception('Could not launch $url: $e');
    }
  }
}
