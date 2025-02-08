class ApiConstants {
  static const String baseURL = "http://10.10.5.125:8001/";

  /// HOME
  static const String allFurniture = "/api/v1/furniture/";
  static const String detailFurniture = "/api/v1/furniture/{furniture_id}/";
  static const String allCategories = "/api/v1/categories/";
  static const String categoryRelatedFurniture = "/api/v1/category-furniture/{category_id}"; // todo remove
  static const String discountFurniture = "/api/v1/discount-furniture/"; // todo remove
  static const String company = "/api/v1/company/";
}
