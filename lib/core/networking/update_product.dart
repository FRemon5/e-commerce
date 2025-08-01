import 'package:ecommerce/core/helpers/api.dart';
import 'package:ecommerce/core/models/products_model.dart';

class UpdateProduct {
  Future<ProductsModel> updateProduct({
    required String id,
    required String title,
    required String price,
    required String description,
    required String category,
    required String imageUrl,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": imageUrl,
        "category": category,
      },
      token: null,
    );
    return ProductsModel.fromJson(data);
  }
}
