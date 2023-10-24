import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt7/app/data/models/car/car.dart';

part 'getCarResponse.freezed.dart';
part 'getCarResponse.g.dart';

@freezed
class GetCarResponse with _$GetCarResponse {

  factory GetCarResponse({
    required List<Car>cars,
  }) = _GetCarResponse;

  factory GetCarResponse.fromJson(Map<String, dynamic> json) => _$GetCarResponseFromJson(json);
}