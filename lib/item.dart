import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:newapp/coffehome.dart';

class Item extends StatefulWidget {
  final data;
  const Item({super.key, this.data});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Image.asset(widget.data["image"]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    widget.data["subtitle"],
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5), fontSize: 15),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(widget.data["title"],
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30)),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 40,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(130),
                            border: Border.all(color: Colors.grey)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.minimize,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text("2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300)),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.minimize,
                              color: Colors.white,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                      const Text(
                        "30\$",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    " Volum : 60ml",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[600]),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Coffehome()));
                          },
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange,
                        ),
                        child: Icon(
                          Icons.shopping_basket_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
