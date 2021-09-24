import 'package:flutter/material.dart';

import 'package:boutique_tyler/widgets/product_grid_widget.dart';

enum ItemFilters { All, OnlyFavorite }

var _showFav = false;

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boutique'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (ItemFilters selectedValue) {
              print(selectedValue);
              if(selectedValue == ItemFilters.OnlyFavorite) {
                setState(() {
                  _showFav = true;
                });
              }
              else {
                setState(() {
                  _showFav = false;
                });
              }
            },
            itemBuilder: (_) => <PopupMenuEntry<ItemFilters>>[
              const PopupMenuItem<ItemFilters>(
                value: ItemFilters.All,
                child: Text('Show All'),
              ),
              const PopupMenuItem<ItemFilters>(
                value: ItemFilters.OnlyFavorite,
                child: Text('Only Favorite'),
              ),
            ],
          )
        ],
      ),
      body: ProductGridWidget(_showFav),
    );
  }
}
