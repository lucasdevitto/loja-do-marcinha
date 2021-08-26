import 'package:flutter/material.dart';
import 'package:marcinha_game/data/dummy_products.dart';
import 'package:marcinha_game/models/product.dart';
import 'package:marcinha_game/widgets/product_item.dart';

class ProductsOverviewPage extends StatelessWidget {
  final List<Product> loadeadProducts = dummyProducts;
  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: Text(
          "Marcinha's Game",
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: loadeadProducts.length,
        itemBuilder: (ctx, indice) =>
            ProductItem(product: loadeadProducts[indice]),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
