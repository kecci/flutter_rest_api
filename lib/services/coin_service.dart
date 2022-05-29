import 'package:flutter_rest_api/models/coin.dart';
import 'package:http/http.dart' as http;

class CoinService {
  Future<List<CoinElement>?> getCoins() async {
    var client = http.Client();

    var uri = Uri.parse('https://api.coinstats.app/public/v1/coins?skip=0');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return coinFromJson(json).coins;
    }
  }
}
