class ApiConstants {
  static const String baseURL = "http://5.42.220.153:8003/";

  /// HOME
  static const String allFurniture = "/api/v1/furniture/";
  static const String detailFurniture = "/api/v1/furniture/{furniture_id}/";
  static const String allCategories = "/api/v1/categories/";
  static const String categoryRelatedFurniture = "/api/v1/category-furniture/{category_id}";
  static const String discountFurniture = "/api/v1/discount-furniture/";
}
