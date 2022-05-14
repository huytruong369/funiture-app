import 'package:flutter/material.dart';
import 'package:furiture_app/constants.dart';

class ProductPoster extends StatelessWidget {
  final String image;
  const ProductPoster({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * .69,
            width: size.width * .69,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * .75,
            width: size.width * .75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
