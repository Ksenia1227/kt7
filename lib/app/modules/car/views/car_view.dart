import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_controller.dart';

class CarView extends GetView<CarController> {
  const CarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 219, 233),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 138, 141, 154),
          title: const Text(
            "Данные о машине", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Бренд: ${controller.car.brand.toString()}',
              style: const TextStyle(fontSize: 27,color: Color.fromARGB(255, 40, 32, 78),fontWeight: FontWeight.w500)),
              SizedBox(height: 10),
          Text(
            'Модель: ${controller.car.model.toString()}',
            style: const TextStyle(fontSize: 25,color: Color.fromARGB(255, 63, 31, 62),fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Цена: ${controller.car.price.toString()}\$',
              style:const  TextStyle(fontSize: 25,color:Color.fromARGB(255, 31, 60, 52),fontWeight: FontWeight.w500)),
          SizedBox(
            height: 10,
          ),
          Text('Цвет: ${controller.car.color.toString()}',
              style: const TextStyle(fontSize: 25, color:Color.fromARGB(255, 78, 43, 43),fontWeight: FontWeight.w500))
        ])));
  }
}
