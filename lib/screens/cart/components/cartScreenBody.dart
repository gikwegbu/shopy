import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopy/models/Cart.dart';
import 'package:shopy/size_config.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoCarts.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(5),
        ),
        child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            background: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  // The spacer below, shifts the Trash icon to the extreme right of the Dismissable
                  Spacer(),
                  SvgPicture.asset('assets/icons/Trash.svg'),
                ],
              ),
            ),
            direction: DismissDirection.endToStart,
            child: CartItemCard(cart: demoCarts[index]),
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            }),
      ),
    );
  }
}
