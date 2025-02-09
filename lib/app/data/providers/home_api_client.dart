import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wordly_project/app/data/models/category_model.dart';
import 'package:wordly_project/app/data/models/company_model.dart';

import '../../../utils/constants/api_constants.dart';
import '../models/detail_furniture_model.dart';
import '../models/furniture_model.dart';

part 'home_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class HomeApiClient {
  factory HomeApiClient(Dio dio, {String baseUrl}) = _HomeApiClient;

  @GET(ApiConstants.allFurniture)
  Future<List<FurnitureModel>> allFurniture();

  @GET(ApiConstants.detailFurniture)
  Future<DetailFurnitureModel> detailFurniture(
    @Path("furniture_id") String id,
  );

  @GET(ApiConstants.allCategories)

  Future<List<CategoryModel>> allCategories();

  @GET(ApiConstants.categoryRelatedFurniture)
  Future<List<FurnitureModel>> categoryRelatedFurniture(
    @Path("category_id") String id,
  );

  @GET(ApiConstants.discountFurniture)
  Future<List<FurnitureModel>> discountFurniture();

  @GET(ApiConstants.company)
  Future<CompanyModel> company();
}
