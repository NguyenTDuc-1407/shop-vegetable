// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';

const String BASE_URL = 'https://jsonplaceholder.typicode.com/';
// const String BASE_URL_IMAGE = 'https://boconganhvillages.com/';
const String SOCKET_URL = 'wss://socket1.crudcode.tk';

const String notificationChannelId = 'dpfood_customer_channel';
const String FCM_TOPIC_DEFAULT = 'fcm_all';
const String NOTIFICATION_KEY = 'notification_key';
const String NOTIFICATION_TITLE = 'title';
const String NOTIFICATION_BODY = 'body';

///
/// Muốn set ngôn ngữ tự động theo ngôn ngữ máy
///
Locale localeResolutionCallback(
    Locale locale, Iterable<Locale> supportedLocales) {
  // ignore: unnecessary_null_comparison
  if (locale == null) {
    return supportedLocales.first;
  }
  for (final supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == locale.languageCode) {
      return supportedLocale;
    }
  }
  return supportedLocales.first;
}

List<LocalizationsDelegate> localizationsDelegates = [
  // AppLocalizations.delegate,// Load dư liệu trước
  // GlobalMaterialLocalizations.delegate,
  // GlobalWidgetsLocalizations.delegate,
  // GlobalCupertinoLocalizations.delegate
];
