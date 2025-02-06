import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../utils/constants/api_constants.dart';
import '../models/furniture_model.dart';

part 'home_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class HomeApiClient {
  factory HomeApiClient(Dio dio, {String baseUrl}) = _HomeApiClient;

  @POST(ApiConstants.allFurniture)
  Future<List<FurnitureModel>> allFurniture();
}
