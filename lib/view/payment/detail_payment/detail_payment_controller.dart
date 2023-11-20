// ignore_for_file: unnecessary_overrides, unused_local_variable, prefer_typing_uninitialized_variables
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import '../../../provider/item_provider.dart';

class DetailPaymentController extends GetxController {
  var inputName = TextEditingController();
  var inputPhoneNumber = TextEditingController();
  var inputLocation = TextEditingController();
  Position? position;
  String country = "";
  String city = "";
  String street = "";
  var paychoice = Get.arguments[0];
  late StreamSubscription loginSubscription;
  ItemProvider itemProvider = GetIt.I.get<ItemProvider>();
  List itemList = [];
  @override
  void onInit() {
    super.onInit();
    getLocation();
    items();
  }

  void getLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position!.latitude, position!.longitude);
    country = placemarks[0].country.toString();
    city = placemarks[0].administrativeArea.toString();
    street = placemarks[2].thoroughfare.toString();
    inputLocation.text = "$street,$city,$country";
    update();
  }

  void items() {
    if (itemProvider.Item.runtimeType != itemList.runtimeType) {
      itemList.addAll([itemProvider.Item]);
    } else {
      itemList = itemProvider.Item;
    }
    update();
  }

  void onBack() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
