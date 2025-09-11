class ApiUrl {
  static  String paginationUrl({required offsetNumber , required int limit}) {
    return 'https://app.shukhimart.com.bd/api/v1/products/latest/?limit=$limit&offset=$offsetNumber';
  } 
}