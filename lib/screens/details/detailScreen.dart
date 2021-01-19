import 'package:flutter_ecommerce/models/Product.dart';
import 'package:flutter_ecommerce/screens/details/components/body.dart';
import 'package:flutter_ecommerce/screens/details/components/customAppbar.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: agrs.product.rating),
      body: Body(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}