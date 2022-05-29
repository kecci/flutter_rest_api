// To parse this JSON data, do
//
//     final coin = coinFromJson(jsonString);

import 'dart:convert';

Coin coinFromJson(String str) => Coin.fromJson(json.decode(str));

String coinToJson(Coin data) => json.encode(data.toJson());

class Coin {
    Coin({
        required this.coins,
    });

    List<CoinElement> coins;

    factory Coin.fromJson(Map<String, dynamic> json) => Coin(
        coins: List<CoinElement>.from(json["coins"].map((x) => CoinElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "coins": List<dynamic>.from(coins.map((x) => x.toJson())),
    };
}

class CoinElement {
    CoinElement({
        required this.id,
        required this.icon,
        required this.name,
        required this.symbol,
        required this.rank,
        required this.price,
        required this.priceBtc,
        this.volume,
        required this.marketCap,
        required this.availableSupply,
        required this.totalSupply,
        required this.priceChange1H,
        required this.priceChange1D,
        required this.priceChange1W,
        this.websiteUrl,
        this.twitterUrl,
        this.exp,
        this.contractAddress,
        this.decimals,
        this.redditUrl,
    });

    String id;
    String icon;
    String name;
    String symbol;
    int rank;
    double price;
    double priceBtc;
    double? volume;
    double marketCap;
    double availableSupply;
    double totalSupply;
    double priceChange1H;
    double priceChange1D;
    double priceChange1W;
    String? websiteUrl;
    String? twitterUrl;
    List<String>? exp;
    String? contractAddress;
    int? decimals;
    String? redditUrl;

    factory CoinElement.fromJson(Map<String, dynamic> json) => CoinElement(
        id: json["id"],
        icon: json["icon"],
        name: json["name"],
        symbol: json["symbol"],
        rank: json["rank"],
        price: json["price"].toDouble(),
        priceBtc: json["priceBtc"].toDouble(),
        volume: json["volume"] == null ? null : json["volume"].toDouble(),
        marketCap: json["marketCap"].toDouble(),
        availableSupply: json["availableSupply"].toDouble(),
        totalSupply: json["totalSupply"].toDouble(),
        priceChange1H: json["priceChange1h"].toDouble(),
        priceChange1D: json["priceChange1d"].toDouble(),
        priceChange1W: json["priceChange1w"].toDouble(),
        websiteUrl: json["websiteUrl"] == null ? null : json["websiteUrl"],
        twitterUrl: json["twitterUrl"] == null ? null : json["twitterUrl"],
        exp: List<String>.from(json["exp"].map((x) => x)),
        contractAddress: json["contractAddress"] == null ? null : json["contractAddress"],
        decimals: json["decimals"] == null ? null : json["decimals"],
        redditUrl: json["redditUrl"] == null ? null : json["redditUrl"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "icon": icon,
        "name": name,
        "symbol": symbol,
        "rank": rank,
        "price": price,
        "priceBtc": priceBtc,
        "volume": volume == null ? null : volume,
        "marketCap": marketCap,
        "availableSupply": availableSupply,
        "totalSupply": totalSupply,
        "priceChange1h": priceChange1H,
        "priceChange1d": priceChange1D,
        "priceChange1w": priceChange1W,
        "websiteUrl": websiteUrl == null ? null : websiteUrl,
        "twitterUrl": twitterUrl == null ? null : twitterUrl,
        "exp": List<dynamic>.from(exp!.map((x) => x)),
        "contractAddress": contractAddress == null ? null : contractAddress,
        "decimals": decimals == null ? null : decimals,
        "redditUrl": redditUrl == null ? null : redditUrl,
    };
}
