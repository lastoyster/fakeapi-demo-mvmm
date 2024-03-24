import 'package:mvvm_sample/models/any_model.dart';
import 'package:mvvm_sample/services/api/network_api.dart';

abstract class WebApi extend NetworkApi{
  Future<List<AnyModel>> getInstanceList();
}