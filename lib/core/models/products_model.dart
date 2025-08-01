import 'dart:ffi';

class ProductsModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final RatingModel rating;

  ProductsModel({
    required this.rating,
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory ProductsModel.fromJson(json) {
    return ProductsModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      rating: RatingModel.fromJson(json['rating']),
    );
  }
}

class RatingModel {
  final double rating;
  final Int count;

  RatingModel({required this.rating, required this.count});

  factory RatingModel.fromJson(json) {
    return RatingModel(rating: json['rating'], count: json['count']);
  }
}
