import 'package:ecommerce/core/helpers/api.dart';
import 'package:ecommerce/core/models/products_model.dart';

class GetCategory {
  Future<List<ProductsModel>> getCategory(String category) async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$category',
    );
    List<ProductsModel> categories = [];
    for (int i = 0; i < data.length; i++) {
      categories.add(ProductsModel.fromJson(data[i]));
    }
    return categories;
  }
}
