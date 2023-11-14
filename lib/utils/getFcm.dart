// ignore_for_file: file_names

import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

Future<String?> getFcmToken() async {
  if (Platform.isAndroid) {
    String? fcmKey = await FirebaseMessaging.instance.getToken();
    return fcmKey;
  }
  String? fcmkey = await FirebaseMessaging.instance.getToken();
  return fcmkey;
}
