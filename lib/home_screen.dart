import 'package:flutter/material.dart';
import 'shoes_dart.dart';
import 'simple_animation.dart';
import 'build_category.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Nike',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_none, color: Colors.black)),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.black)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    BuildCategory(text: 'All', duration: 1),
                    BuildCategory(text: 'Sneakers', duration: 1.2),
                    BuildCategory(text: 'Football', duration: 1.4),
                    BuildCategory(text: 'Tennis', duration: 1.6),
                  ],
                ),
              ),
              SizedBox(height: 20),
              FadeAnimation(
                1.7,
                makeItem(
                    image: 'assets/images/509.jpg',
                    tag: 'cream',
                    price: "125\$",
                    context: context),
              ),
              FadeAnimation(
                1.8,
                makeItem(
                    image: 'assets/images/504.jpg',
                    tag: 'grey',
                    price: "159\$",
                    context: context),
              ),
              FadeAnimation(
                1.9,
                makeItem(
                    image: 'assets/images/505.jpg',
                    tag: 'blue',
                    price: "110\$",
                    context: context),
              ),
              FadeAnimation(
                2,
                makeItem(
                    image: 'assets/images/506.jpg',
                    tag: 'green',
                    price: "1700\$",
                    context: context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, price, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Shoes(price: price, image: image, tag: tag),
            ),
          );
        },
        child: Container(
          height: 300,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Sneakers',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Air Jordan',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: Icon(Icons.favorite_border, size: 20.0),
                    ),
                  )
                ],
              ),
              Text(
                price,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
