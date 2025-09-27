import 'package:bloc_practice/data/api_url/api_url.dart';
import 'package:bloc_practice/data/models/product_model/product_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

 @lazySingleton
 class PaginationRepository {
  Future<List<Product>> getProductList({required int offsetNumber}) async {
      Dio dio = Dio();
    try {
      print(" ================ Come Here ===================");
      final response = await dio.get(
        ApiUrl.paginationUrl(offsetNumber: offsetNumber, limit: 10),
      );
      print(response.data);
      final parseData = ProductList.fromJson(response.data);
      return parseData.products ?? [];
    } on DioException catch (e) {
      print("Dio error: ${e.message}");
      return []; // handle gracefully
    } catch (e) {
      print("Unexpected error: $e");
      return [];
    }
  }
}
