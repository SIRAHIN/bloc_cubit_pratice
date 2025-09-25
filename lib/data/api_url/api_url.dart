class ApiUrl {
  static  String paginationUrl({required offsetNumber , required int limit}) {
    return 'https://app.shukhimart.com.bd/api/v1/products/latest/?limit=$limit&offset=$offsetNumber';
  } 

  static const String baseUrl = 'https://barikoi.xyz/v2/api';

  static String reverseGeocodingApi({required String longitude, required String latitude}) =>
      '$baseUrl/search/reverse/geocode?api_key=MjYyMzpHOVkzWFlGNjZG&longitude=$longitude&latitude=$latitude&district=true&post_code=true&country=true&sub_district=true&union=true&pauroshova=true&location_type=true&division=true&address=true&area=true&bangla=true';
}