import 'package:dio/dio.dart';
import 'package:flutter_base/data/providers/network/interceptor/app_interceptor.dart';
import 'package:flutter_base/data/providers/network/interceptor/pretty_dio_logger.dart';

class DioClient {
  late Dio dio;

  BaseOptions baseOptions = BaseOptions(
    baseUrl: '',
    connectTimeout: 5000,
  );

  static DioClient _dioClient = DioClient._init();

  factory DioClient() => _dioClient;

  DioClient._init() {
    dio = Dio(baseOptions);
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(AppInterceptor());
  }
}
