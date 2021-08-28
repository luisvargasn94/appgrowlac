import 'package:flutter/material.dart';
import 'package:negocio/constants.dart';

class Fcard extends StatelessWidget {
  final String title;
  final String ingredientes;
  final String image;
  final int precio;
  final String gramos;
  final String descripcion;
  final Function press;

  const Fcard({
    Key? key,
    required this.title,
    required this.ingredientes,
    required this.image,
    required this.precio,
    required this.gramos,
    required this.descripcion,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(.03),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                '\$$precio',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 200,
              left: 50,
              child: Container(
                width: 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        ingredientes,
                        style: TextStyle(
                          color: Colors.pinkAccent,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        descripcion,
                        maxLines: 4,
                        style: TextStyle(color: kTextColor.withOpacity(.5)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        gramos,
                        style: TextStyle(
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
