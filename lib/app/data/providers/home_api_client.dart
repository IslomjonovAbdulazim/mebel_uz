import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wordly_project/app/data/models/hospital_furniture_model.dart';

import '../../../utils/constants/api_constants.dart';

part 'home_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class HomeApiClient {
  factory HomeApiClient(Dio dio, {String baseUrl}) = _HomeApiClient;

  @POST(ApiConstants.books)
  Future<List<HospitalFurnitureModel>> furniture(
    @Body() Map<String, dynamic> body,
  );
}
