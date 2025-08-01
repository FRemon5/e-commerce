import 'package:ecommerce/core/helpers/api.dart';
import 'package:ecommerce/core/models/products_model.dart';

class GetAllProducts {
  Future<List<ProductsModel>> getProducts() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );
    List<ProductsModel> products = [];
    for (int i = 0; i < data.length; i++) {
      products.add(ProductsModel.fromJson(data[i]));
    }
    return products;
  }
}
