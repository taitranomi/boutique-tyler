import 'package:flutter/foundation.dart';

import 'package:boutique_tyler/providers/product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
      Product(
          id: '1',
          name: 'iPhone 12 64GB',
          description: 'rdjhfgj',
          price: 999.99,
          imageUrl:
              'https://cdn.tgdd.vn/Products/Images/42/213031/Slider/vi-vn-iphone-12-1.jpg'),
      Product(
          id: '2',
          name: 'Xiaomi Redmi 9T',
          description: 'fjnfghfghd',
          price: 199.99,
          imageUrl:
              'https://cdn.tgdd.vn/Products/Images/42/233130/xiaomi-redmi-9t-6gb-114621-014639.jpg'),
      Product(
          id: '3',
          name: 'OPPO Reno6 Z 5G',
          description: 'fgcnbfgbb',
          price: 499.99,
          imageUrl:
              'https://cdn.tgdd.vn/Products/Images/42/239747/reno6-z-5g-24.jpg'),
      Product(
          id: '4',
          name: 'Samsung Galaxy Z Fold2',
          description: 'ryujrth',
          price: 1999.99,
          imageUrl:
              'https://cdn.tgdd.vn/Products/Images/42/232668/samsung-galaxy-z-fold2-5g-dac-biet-282120-112134.jpg'),
      Product(
          id: '5',
          name: 'OPPO Find X3 Pro',
          description: 'jghjghjtyjy',
          price: 969.99,
          imageUrl:
              'https://cdn.tgdd.vn/Products/Images/42/233130/xiaomi-redmi-9t-6gb-114621-014639.jpg'),
      Product(
          id: '6',
          name: 'Realme C21Y',
          description: 'hgn',
          price: 169.99,
          imageUrl:
              'https://cdn.tgdd.vn/Products/Images/42/241265/realme-c21y-007.jpg'),
    ];

  List<Product> get items {
    return [..._items];
  }

  void addProducts() {
    notifyListeners();
  }

  Product findProductById(String id) {
    return items.firstWhere((prod) => prod.id == id);
  }
}