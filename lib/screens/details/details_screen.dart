import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furiture_app/constants.dart';
import 'package:furiture_app/models/product.dart';
import 'package:furiture_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(
        product: product,
      ),
      appBar: buildAppbar(context),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: SvgPicture.asset('assets/icons/back.svg'),
      ),
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText1,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: SvgPicture.asset('assets/icons/cart_with_item.svg'),
        ),
      ],
    );
  }
}
