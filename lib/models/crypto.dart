import 'package:flutter/material.dart';
import 'package:mvvm_sample/models/any_model.dart';


class Crypto extends AnyModel {
  String id;
  String name;
  String symbol;
  double changePercet24hr,
  double priceUsd;
  double marketCapUsd;
  int rank;

  Crypto(
    this.id,
    this.name,
    this.symbol,
    this.changePercet24hr,
    this.priceUsd,
    this.marketCapUsd,
    this.rank,
  );
  
  factory Crypto.fromMapJson(Map<String,dynamic> jsonMapObject){
    return Crypto(
    jsonMapObject['id'],
    jsonMapObject['name'],
    jsonMapObject['symbol'],
    double.parse(jsonMapObject['changePercet24hr']),
    double.parse(jsonMapObject['priceUsd']),
    double.parse(jsonMapObject['marketCapUsd']),
    int.parse(jsonMapObject['rank']),
    );
    }
    }
 