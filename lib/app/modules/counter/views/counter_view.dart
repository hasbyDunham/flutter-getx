// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  final CounterController controller = Get.put(CounterController());
  CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bilangan ke :"),
          Obx(() => Text(controller.bilangan.toString())),
          SizedBox(
            width: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.tambahSatu();
                },
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.kurangSatu();
                },
                child: Icon(Icons.remove),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.reset();
                },
                child: Icon(Icons.restore_outlined),
              )
            ],
          ),
        ],
      )),
    );
  }
}
