import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/services/remote_data/dio_factory.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Dio & Api Servicese
  Dio dio = DioFactory.getDio();
}
