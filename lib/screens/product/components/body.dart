import 'package:flutter/material.dart';
import 'package:furiture_app/components/search_box.dart';
import 'package:furiture_app/constants.dart';
import 'package:furiture_app/screens/product/components/category_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        const CategoryList(),
        const SizedBox(height: kDefaultPadding / 2),
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding / 2,
                ),
                height: 160,
                color: Colors.blueAccent,
              )
            ],
          ),
        ),
      ],
    );
  }
}
