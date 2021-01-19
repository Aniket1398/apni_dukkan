import 'package:flutter_ecommerce/components/default_button.dart';
import 'package:flutter_ecommerce/models/Product.dart';
import 'package:flutter_ecommerce/screens/details/components/colorDots.dart';
import 'package:flutter_ecommerce/screens/details/components/productDescription.dart';
import 'package:flutter_ecommerce/screens/details/components/productImages.dart';
import 'package:flutter_ecommerce/screens/details/components/topRoundedcontainer.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';


class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(35),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}