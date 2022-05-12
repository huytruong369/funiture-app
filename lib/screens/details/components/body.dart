import 'package:flutter/material.dart';
import 'package:furiture_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      decoration: const BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: size.width * 0.8,
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Stack(
              children: [
                Container(
                  height: size.width * .7,
                  width: size.width * .7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                Image.asset(
                  'assets/images/Item_2.png',
                  height: size.width * .7,
                  width: size.width * .7,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
