import 'package:ecommerce/core/helpers/api.dart';

class GetAllCategories {
  Future<List<String>> getCategories() async {
    List<String> data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );
    return data;
  }
}
