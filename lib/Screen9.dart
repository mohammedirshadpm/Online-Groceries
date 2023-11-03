import 'package:flutter/material.dart';
import 'package:untitled8/Account.dart';
import 'package:untitled8/Cart.dart';
import 'package:untitled8/Expolre.dart';
import 'package:untitled8/Favourite.dart';

class Screen9 extends StatefulWidget {
  const Screen9({Key? key}) : super(key: key);

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 160),
              child: Image.asset(
                "assets/a8.png",
                width: 40,
                height: 40,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 85),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text("Dhaka, Banassre",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4C4F4D))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 25),
              child: Container(
                width: 364,
                height: 51.56840133666992,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xfff1f2f2)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              hintText: "Search Store",
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.5, right: 23.5),
              child: Image.asset(
                "assets/a10.png",
                width: 368.90240478515625,
                height: 180.12139892578125,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Text("Exclusive Offer",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725))),
                  Padding(
                    padding: const EdgeInsets.only(left: 95),
                    child: Text("See all",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff53B175))),
                  )
                ],
              ),
            ),
            Container(
              width: 173.3249969482422,
              height: 248.50999450683594,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(18)),
            ),
          ],
        ),
      ),
    );
  }
}
