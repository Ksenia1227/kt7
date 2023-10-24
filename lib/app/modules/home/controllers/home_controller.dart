import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:kt7/app/data/models/car/car.dart';
import 'package:kt7/app/data/models/getcarresponse/getCarResponse.dart';

class HomeController extends GetxController {
 Dio client=Dio();
 String url='https://myfakeapi.com/api/cars/';
 
 var cars=<Car>[].obs;
 
  @override
  void onInit() {
    super.onInit();
  }
  void getData()async{
    var response=await client.get(url);
    var responseData=GetCarResponse.fromJson(response.data);
    cars.value=responseData.cars;
  }

 
}
