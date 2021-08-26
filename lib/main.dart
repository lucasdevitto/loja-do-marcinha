import 'package:flutter/material.dart';
import 'package:marcinha_game/pages/products_details_page.dart';
import 'package:marcinha_game/pages/products_overview_page.dart';
import 'package:marcinha_game/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.pink.shade700,
        fontFamily: 'Lato',
      ),
      home: ProductsOverviewPage(),
      routes: {
        AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage(),
      },
    );
  }
}

