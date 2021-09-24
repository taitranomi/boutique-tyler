import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:boutique_tyler/providers/product.dart';
import 'package:boutique_tyler/screens/product_detail_screen.dart';

class ProductTileWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Product productData = Provider.of<Product>(context, listen: false);

    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
        children: <Widget>[
          GestureDetector(
            child: Image.network(productData.imageUrl, fit: BoxFit.cover, width: 100, height: 100),
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetailScreen.routedName, arguments: productData.id);
            },
          ),
          Container(
            width: 160,
            color: Colors.black54,
            child: Text(productData.name, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<Product>(builder: (_, productData, __) => IconButton(onPressed: () {productData.toggleFavorite();}, icon: Icon(productData.isFavourtied ? Icons.favorite : Icons.favorite_border, color: Theme.of(context).accentColor)),),
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, color: Theme.of(context).accentColor))
            ]
          ),
        ]
      ),
    );
  }
}

