import 'package:mvmm_sample/models/any_models.dart';
import 'package:mvvm_sample/services/api/network_api.dart';

abstract class FakeApi extends NetworkApi{
  Future<List<AnyModel>> getInstanceList();
}