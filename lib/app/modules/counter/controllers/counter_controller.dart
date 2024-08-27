import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar(
        'Warning',
        'Loba Teuing Cape',
        backgroundColor: Colors.amber,
        icon: Icon(Icons.warning),
      );
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar(
        'Warning',
        'Tos Seep',
        backgroundColor: const Color.fromARGB(255, 255, 7, 7),
        icon: Icon(Icons.warning),
      );
    } else {
      bilangan.value--;
    }
  }

  void reset() {
      bilangan.value = 0;
  }
}
