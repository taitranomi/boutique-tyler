import 'package:flutter/material.dart';

import 'package:boutique_tyler/widgets/product_tile_widget.dart';
import 'package:boutique_tyler/providers/products_provider.dart';
import 'package:boutique_tyler/providers/product.dart';
import 'package:provider/provider.dart';

class ProductGridWidget extends StatelessWidget {
  final bool _showFavGrid;

  ProductGridWidget(this._showFavGrid);

  @override
  Widget build(BuildContext context) {
    final List<Product> products = _showFavGrid ? Provider.of<ProductsProvider>(context).items.where((p) => p.isFavourtied == _showFavGrid).toList() : Provider.of<ProductsProvider>(context).items;

    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        // childAspectRatio: 2/2
      ),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: ProductTileWidget(),
      )
    );
  }
}