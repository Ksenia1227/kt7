import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 168, 191, 206),
          title: const Center(
              child:
                  Text('Каталог машин', style: TextStyle(color: Colors.black))),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Obx(() => Text("Status: ${controller.status}",
                  style: TextStyle(color: Colors.black, fontSize: 18))),
              TextButton(
                  onPressed: () => controller.getData(),
                  child: Column(children: [
                    Container(
                      child: Text("Обновить данные",
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Color.fromARGB(255, 201, 207, 209)),
                    )
                  ])),
              Obx((() => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.cars.length,
                  itemBuilder: (context, index) {
                    var curCar = controller.cars[index];
                    return GestureDetector(
                        onTap: () => Get.toNamed('car', arguments: curCar),
                        child: Card(
                            color: Color.fromARGB(255, 172, 184, 190),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            margin: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 150),
                            child: ListTile(
                              leading: CircleAvatar(
                                  radius: 18,
                                  backgroundColor:
                                      Color.fromARGB(255, 137, 144, 204),
                                  child: Text(curCar.id.toString(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 15))),
                              title: Text(curCar.brand.toString(),
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 18)),
                              subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Model: ${curCar.model.toString()}",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        )),
                                    const Text("...",
                                      style:  TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 15),
                                    ),
                                  ]),
                              trailing: Icon(
                                  curCar.availability == true
                                      ? Icons.check
                                      : Icons.close,
                                  color: Color.fromARGB(255, 60, 72, 185)),
                            )));
                  })))
            ])));
  }
}
