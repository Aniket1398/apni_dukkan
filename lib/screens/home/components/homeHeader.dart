import 'package:flutter_ecommerce/screens/cart/cartScreen.dart';
import 'package:flutter_ecommerce/screens/home/components/searchField.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'iconBtnwithCounter.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfitem: 3,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}