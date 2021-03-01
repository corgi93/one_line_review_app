import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HttpHelper {
  final String url;
  // constructor 생성시 url받도록.
  HttpHelper(this.url);

  String brandListURL(brandName) {
    return 'http://makeup-api.herokuapp.com/api/v1/products.json?brand=$brandName';
  }

  // get home datas(GET)
  Future getBrandProduct(brandName) async {
    http.Response res = await http.get(brandListURL(brandName));

    if (res.statusCode == 200) {
      String data = res.body;
      print('응답 데이터: ' + data);

      var decodedData = convert.jsonDecode(data);
      return decodedData;
    } else {
      print('Error!! : status code is ${res.statusCode}');
    }
  }

  // update my profile(PUT)
}
