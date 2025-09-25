import 'package:bloc_practice/data/api_url/api_url.dart';
import 'package:bloc_practice/data/models/reverseGeo_model/place_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ReversegeoRepository {
  final Dio dio = Dio();

  ReversegeoRepository();

  Future<Either<String, PlaceResponse>> getPlaceInfo({
    required String lat,
    required String lon,
  }) async {
    try {
      print(" ================ Come Here ===================");
      final response = await dio.get(
        ApiUrl.reverseGeocodingApi(latitude: lat, longitude: lon),
      );

      print(response.data);

      final parseData = PlaceResponse.fromJson(response.data);

      return Right(parseData);
    } on DioException catch (e) {
      final errorMsg = e.message ?? "Something went wrong with Dio";
      print("Dio error: $errorMsg");
      return Left(errorMsg);
    } catch (e) {
      print("Unexpected error: $e");
      return Left("Unexpected error: $e");
    }
  }
}
