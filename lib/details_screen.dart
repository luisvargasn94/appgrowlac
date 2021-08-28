import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:negocio/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/backward.svg',
                  height: 11,
                ),
                SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 11,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(5),
              height: 305,
              width: 305,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
