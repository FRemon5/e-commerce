import 'package:ecommerce/core/helpers/api.dart';
import 'package:ecommerce/core/models/products_model.dart';

class AddProduct {
  Future<ProductsModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String category,
    required String imageUrl,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
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
