import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dw9_delivery_app/app/core/exceptions/repository_exception.dart';
import './products_repository.dart';

import '../../core/rest_client/custom_dio.dart';
import '../../models/product_model.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final CustomDio dio;

  ProductsRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<ProductModel>> findAllProducts() async {
    try {
      final result = await dio.unauth().get('/products');
      return result.data
          .map<ProductModel>(
            (p) => ProductModel.fromMap(p),
          )
          .toList();
    } on DioError catch (e, s) {
      log('erro ao buscar produtos', error: e, stackTrace: s);
      throw RepositoryException(message: 'erro ao busacar produtos');
    }
  }
}
