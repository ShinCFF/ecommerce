import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/category_model.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'zero to shin'),
      bottomNavigationBar: CustomNavBar(),
      body: Container(
          child: CarouselSlider(
        // items: [],
        options: CarouselOptions(
          aspectRatio: 1.5,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          // enableInfiniteScroll: false,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          initialPage: 2,
        ),
        items: Category.categories
            .map((category) => HeroCarouselCard(category: category))
            .toList(),
      )),
    );
  }
}

class HeroCarouselCard extends StatelessWidget {
  final Category category;

  const HeroCarouselCard({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(category.imageUrl,
                  fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    category.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
