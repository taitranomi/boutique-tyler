import 'package:flutter/material.dart';

import 'package:boutique_tyler/providers/products_provider.dart';
import 'package:boutique_tyler/screens/product_detail_screen.dart';
import 'package:boutique_tyler/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ProductsProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routedName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
