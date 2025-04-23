// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_consumer_app/features/Analytics/domain/repositories/analytics_repository.dart';
import 'package:flutter_consumer_app/features/Analytics/domain/entities/device_info_entity.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class MixpanelAnalyticsRepository implements AnalyticsRepository {
  final Mixpanel mixpanel;

  MixpanelAnalyticsRepository(this.mixpanel);

  void _initializeMixpanel() async {
    await Mixpanel.init('YOUR_MIXPANEL_TOKEN', trackAutomaticEvents: true);

    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    DeviceInfo deviceInfo;

    if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      // Populate deviceInfo based on iOS info.
    } else {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      // Populate deviceInfo based on Android info.
    }

    // Set user properties or super properties based on deviceInfo.
    // For example, set OS version, device model, etc.
    // _mixpanel.identify(deviceInfo.deviceIdentifier);
  }

  @override
  Future<void> trackEvent(
      String eventName, Map<String, dynamic> properties) async {
    mixpanel.track(eventName, properties: properties);
  }
}
