import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newapp/item.dart';

class Coffehome extends StatefulWidget {
  const Coffehome({super.key});

  @override
  State<Coffehome> createState() => _CoffehomeState();
}

class _CoffehomeState extends State<Coffehome>
    with SingleTickerProviderStateMixin {
  List iteams = [
    " Hot Coffe",
    " Cold Coffe",
    "Cappuccino",
    "latte",
    "Ice coffe",
  ];
  List categorise = [
    {
      "image": "images/Latte.png",
      "title": "Latte",
      "subtitle": "Best Coffe",
      "price": 30,
      "Icon": Icons.add,
    },
    {
      "image": "images/Espresso.png",
      "title": "Espresso",
      "subtitle": "Best Coffe",
      "price": 30,
      "Icon": Icons.add,
    },
    {
      "image": "images/Black Coffee.png",
      "title": "Black Coffe",
      "subtitle": "Best Coffe",
      "price": 30,
      "Icon": Icons.add,
    },
    {
      "image": "images/Cold Coffee.png",
      "title": "Cold Coffee",
      "subtitle": "Best Coffe",
      "price": 30,
      "Icon": Icons.add,
    },
  ];

  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.sort,
                  color: Colors.orange,
                  size: 30,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.orange,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Its a Greate Day for Coffee',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              child: TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    filled: true,
                    border: InputBorder.none,
                    fillColor: Color.fromARGB(255, 50, 54, 56),
                    hintText: "Find your Coffe",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: ListView.builder(
                  itemCount: iteams.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        iteams[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              itemCount: categorise.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 230),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Item(
                              data: categorise[index],
                            )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0XFF212325),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 8,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(15),
                          child: Image.asset(
                            categorise[index]["image"],
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            categorise[index]["title"],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            categorise[index]["subtitle"],
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                "30\$",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            )),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.orange,
                              ),
                              child: Icon(
                                categorise[index]["Icon"],
                                color: Colors.white,
                                size: 20,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(color: Color(0XFF212325), boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.orange,
                    size: 35,
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 35,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  ),
                  Icon(
                    Icons.notifications,
                    color: const Color.fromARGB(255, 132, 118, 118),
                    size: 35,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
