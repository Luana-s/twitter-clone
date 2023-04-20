import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NetworkModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => Dio(
      BaseOptions(
        baseUrl: 'https://dummyjson.com/'
      )
    ), export: true),
  ];
}