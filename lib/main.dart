import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key}) : preferredSize = Size.fromHeight(100.0), super(key: key);
  @override
  final Size preferredSize;
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppBar( // A REFAIRE
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Container(
              height: 150,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.blue[100],
                          boxShadow: [
                            BoxShadow (
                              color: Colors.black38,
                              offset: Offset(0, 3),
                              blurRadius: 10,
                            ),
                          ]
                      ),
                      child: ClipOval(
                        child: Image.asset('assets/images/tuxedo.png',
                        scale: 2.5,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ]
        ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
          child: ListView(
            children: [
              SizedBox(height: 20),

              Container(
                child: Row(
                  children: [
                    Flexible(
                        child: Text("SEARCH FOR RECIPES",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    ),
                    Flexible(
                      child: Text(""),
                    ),
                  ]
                ),
              ),


              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey[200],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey[500],
                  ),
                  title: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text("Recommended",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              SizedBox(height: 20),

              Container(
                height: 225,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [

                      Container(
                        padding: EdgeInsets.all(10),
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(255, 233, 198, 1),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset('assets/images/burger.png'),
                              ),
                              Text("Hamburger\n \$21",
                                style: TextStyle(
                                  color: Color.fromRGBO(218, 149, 81, 1),
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                        ),
                      ),

                      SizedBox(width: 15),

                      Container(
                        padding: EdgeInsets.all(10),
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.blue[500].withOpacity(0.3),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset('assets/images/fries.png'),
                              ),
                              Text("Chips\n \$15",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 20,
                                ),
                              ),
                            ]
                        ),
                      ),

                      SizedBox(width: 15),

                      Container(
                        padding: EdgeInsets.all(10),
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.greenAccent[200].withOpacity(0.3),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                                child: Image.asset('assets/images/pizza.png'),
                              ),
                              Text("Pizza\n \$18",
                                style: TextStyle(
                                  color: Colors.green[300],
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                                ),
                            ],
                        ),
                      ),

                    ],
                  ),
              ),

              SizedBox(height: 20),

              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      //color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Opacity(
                        opacity: 1,
                        child: Text("FEATURED",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Container(
                      alignment: Alignment.center,
                      //color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Opacity(
                        opacity: 0.2,
                        child: Text("COMBO",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Container(
                      alignment: Alignment.center,
                      //color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Opacity(
                        opacity: 0.2,
                        child: Text("FAVORITES",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Container(
                      alignment: Alignment.center,
                      //color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Opacity(
                        opacity: 0.2,
                        child: Text("RECOMMENDED",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                height: 250,
                child: ListView(
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                            width: 85,
                            height: 85,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 227, 223, 1),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Image.asset('assets/images/hotdog.png',
                              scale: 2,
                            ),
                          ),

                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Delicious hot dog",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                        color: Colors.yellow,
                                        size: 18,
                                      ),
                                      Icon(Icons.star,
                                        color: Colors.yellow,
                                        size: 18,
                                      ),
                                      Icon(Icons.star,
                                        color: Colors.yellow,
                                        size: 18,
                                      ),
                                      Icon(Icons.star,
                                        color: Colors.yellow,
                                        size: 18,
                                      ),
                                    ]
                                  ),
                                  Row(
                                    children: [
                                      Text("\$6 ",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                        ),
                                      ),

                                      Text(" \$18",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ]
                                  ),
                                ]
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(254, 125, 106, 1),
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow (
                                      color: Colors.black26,
                                      offset: Offset(2, 10),
                                      blurRadius: 10,
                                    ),
                                  ]
                              ),
                              child: Icon(Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),

                        ]
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: 85,
                              height: 85,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 227, 223, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Image.asset('assets/images/cheese.png',
                                scale: 2,
                              ),
                            ),

                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Delicious cheese",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Row(
                                          children: [
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                          ]
                                      ),
                                      Row(
                                          children: [
                                            Text("\$6 ",
                                              style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 18,
                                              ),
                                            ),

                                            Text(" \$18",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                decoration: TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ]
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(254, 125, 106, 1),
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    boxShadow: [
                                      BoxShadow (
                                        color: Colors.black26,
                                        offset: Offset(2, 10),
                                        blurRadius: 10,
                                      ),
                                    ]
                                ),
                                child: Icon(Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: 85,
                              height: 85,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 227, 223, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Image.asset('assets/images/doughnut.png',
                                scale: 2,
                              ),
                            ),

                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Delicious doughnut",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Row(
                                          children: [
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                          ]
                                      ),
                                      Row(
                                          children: [
                                            Text("\$6 ",
                                              style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 18,
                                              ),
                                            ),

                                            Text(" \$18",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                decoration: TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ]
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(254, 125, 106, 1),
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    boxShadow: [
                                      BoxShadow (
                                        color: Colors.black26,
                                        offset: Offset(2, 10),
                                        blurRadius: 10,
                                      ),
                                    ]
                                ),
                                child: Icon(Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: 85,
                              height: 85,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 227, 223, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Image.asset('assets/images/popcorn.png',
                                scale: 2,
                              ),
                            ),

                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Delicious popcorn",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Row(
                                          children: [
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                          ]
                                      ),
                                      Row(
                                          children: [
                                            Text("\$6 ",
                                              style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 18,
                                              ),
                                            ),

                                            Text(" \$18",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                decoration: TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ]
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(254, 125, 106, 1),
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    boxShadow: [
                                      BoxShadow (
                                        color: Colors.black26,
                                        offset: Offset(2, 10),
                                        blurRadius: 10,
                                      ),
                                    ]
                                ),
                                child: Icon(Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: 85,
                              height: 85,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 227, 223, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Image.asset('assets/images/sandwich.png',
                                scale: 2,
                              ),
                            ),

                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Delicious sandwich",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Row(
                                          children: [
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                          ]
                                      ),
                                      Row(
                                          children: [
                                            Text("\$6 ",
                                              style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 18,
                                              ),
                                            ),

                                            Text(" \$18",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                decoration: TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ]
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(254, 125, 106, 1),
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    boxShadow: [
                                      BoxShadow (
                                        color: Colors.black26,
                                        offset: Offset(2, 10),
                                        blurRadius: 10,
                                      ),
                                    ]
                                ),
                                child: Icon(Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              width: 85,
                              height: 85,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 227, 223, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Image.asset('assets/images/taco.png',
                                scale: 2,
                              ),
                            ),

                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Delicious taco",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Row(
                                          children: [
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellow,
                                              size: 18,
                                            ),
                                          ]
                                      ),
                                      Row(
                                          children: [
                                            Text("\$6 ",
                                              style: TextStyle(
                                                color: Colors.redAccent,
                                                fontSize: 18,
                                              ),
                                            ),

                                            Text(" \$18",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                decoration: TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ]
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(254, 125, 106, 1),
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    boxShadow: [
                                      BoxShadow (
                                        color: Colors.black26,
                                        offset: Offset(2, 10),
                                        blurRadius: 10,
                                      ),
                                    ]
                                ),
                                child: Icon(Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                          ]
                      ),
                    ),

                  ]
                ),
              ),
            ],
        ),
      ),
    ),
    );
  }
}
