import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:boutique_tyler/providers/products_provider.dart';
import 'package:boutique_tyler/providers/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const String routedName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final Product loadedProduct = Provider.of<ProductsProvider>(context, listen: false).findProductById(productId);

    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.name),),
    );
  }
}