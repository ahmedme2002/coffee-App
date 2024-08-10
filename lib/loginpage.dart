import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:newapp/coffehome.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                opacity: 0.6,
                image: AssetImage('images/bg.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Coffe Shop',
              style: TextStyle(
                  fontFamily: "Pacifico", color: Colors.white, fontSize: 50),
            ),
            Column(
              children: [
                Text(
                  'Feelling Low? Take a Sip of Coffe',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Coffehome()));
                    },
                    child: Text(
                      'Get Start',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
