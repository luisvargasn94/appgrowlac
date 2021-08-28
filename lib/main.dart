import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:negocio/constants.dart';
import 'package:negocio/details_screen.dart';
import 'package:negocio/widgets/category_title.dart';
import 'widgets/food_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desing',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          textTheme: TextTheme(
            headline6: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(fontWeight: FontWeight.bold),
            //title: TextStyle(fontWeight: FontWeight.bold),
          )),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.20),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          // height: 40,
          //width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepOrangeAccent,
          ),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 11,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Bienvenidos a lo mejor Desing',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    CategoryTitle(title: 'All', active: true),
                    CategoryTitle(title: 'El mejor'),
                    CategoryTitle(title: 'El mas economico'),
                    CategoryTitle(title: 'El mas rico'),
                    CategoryTitle(title: 'El mas sano'),
                  ],
                )),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kBorderColor),
              ),
              child: SvgPicture.asset('assets/icons/search.svg'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Fcard(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DetailsScreen();
                        }),
                      );
                    },
                    title: 'El mejor',
                    image: 'assets/images/image_1.png',
                    ingredientes: 'Por su tamaño',
                    precio: 20,
                    gramos: '500Gr',
                    descripcion:
                        'El mejor producto del segmento por su tamaño ideal para el consumo divertido',
                  ),
                  Fcard(
                    press: () {},
                    title: 'El mas economico',
                    image: 'assets/images/image_2.png',
                    ingredientes: 'Por su precio',
                    precio: 5,
                    gramos: '250Gr',
                    descripcion:
                        'El mejor producto del segmento por su precio ideal para todo el mundo',
                  ),
                  Fcard(
                    press: () {},
                    title: 'El mas rico',
                    image: 'assets/images/image_1_big.png',
                    ingredientes: 'Por su sabor',
                    precio: 30,
                    gramos: '800Gr',
                    descripcion:
                        'Disfruta del mejor sabor natural y con mucha proteina',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
