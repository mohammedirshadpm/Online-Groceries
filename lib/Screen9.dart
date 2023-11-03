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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 173.3249969482422,
                    height: 248.50999450683594,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE2E2E2)),
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Image.asset(
                            "assets/a11.png",
                            width: 99.88697814941406,
                            height: 79.4321517944336,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Organic Bananas",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff181725))),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("7pcs, Priceg",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7C7C7C))),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Text("\$4.99",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff181725))),
                              Padding(
                                padding: const EdgeInsets.only(left: 46),
                                child: Container(
                                  width: 45.66999816894531,
                                  height: 45.66844940185547,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Color(0xff53b175)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 173.3249969482422,
                      height: 248.50999450683594,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffE2E2E2)),
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Image.asset(
                              "assets/a12.png",
                              width: 103.43207550048828,
                              height: 62.55572509765625,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Red Apple",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff181725))),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("1kg, Priceg",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff7C7C7C))),
                          ),
                          SizedBox(
                            height: 36,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Text("\$4.99",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff181725))),
                                Padding(
                                  padding: const EdgeInsets.only(left: 46),
                                  child: Container(
                                    width: 45.66999816894531,
                                    height: 45.66844940185547,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        color: Color(0xff53b175)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //

                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 173.3249969482422,
                            height: 248.50999450683594,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE2E2E2)),
                                borderRadius: BorderRadius.circular(18)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Image.asset(
                                    "assets/a11.png",
                                    width: 99.88697814941406,
                                    height: 79.4321517944336,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("Organic Bananas",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff181725))),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("7pcs, Priceg",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7C7C7C))),
                                ),
                                SizedBox(
                                  height: 36,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text("\$4.99",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff181725))),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 46),
                                        child: Container(
                                          width: 45.66999816894531,
                                          height: 45.66844940185547,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              color: Color(0xff53b175)),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.71),
            child: Row(
              children: [
                Text("Best Selling",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725))),
                Padding(
                  padding: const EdgeInsets.only(left: 135),
                  child: Text("See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff53B175))),
                )
              ],
            ),
          ),

          //
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                        width: 173.3249969482422,
                        height: 248.50999450683594,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE2E2E2)),
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 22,
                            ),
                            Center(
                              child: Image.asset(
                                "assets/a13.png",
                                width: 97.47233581542969,
                                height: 85.08816528320312,
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("Bell Pepper Red",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff181725))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("1kg, Priceg",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7C7C7C))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Text("\$4.99",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff181725))),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 46),
                                    child: Container(
                                      width: 45.66999816894531,
                                      height: 45.66844940185547,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                          color: Color(0xff53b175)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),

                    //

                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                          width: 173.3249969482422,
                          height: 248.50999450683594,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffE2E2E2)),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Center(
                                child: Image.asset(
                                  "assets/a14.png",
                                  width: 88.99959564208984,
                                  height: 79.96057891845703,
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("Ginger",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff181725))),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("250gm, Priceg",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff7C7C7C))),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Text("\$4.99",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff181725))),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 46),
                                      child: Container(
                                        width: 45.66999816894531,
                                        height: 45.66844940185547,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17),
                                            color: Color(0xff53b175)),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                                width: 173.3249969482422,
                                height: 248.50999450683594,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffE2E2E2)),
                                    borderRadius: BorderRadius.circular(18)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 22,
                                    ),
                                    Center(
                                      child: Image.asset(
                                        "assets/a13.png",
                                        width: 97.47233581542969,
                                        height: 85.08816528320312,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 22,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text("Bell Pepper Red",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff181725))),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text("1kg, Priceg",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff7C7C7C))),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Text("\$4.99",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff181725))),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 46),
                                            child: Container(
                                              width: 45.66999816894531,
                                              height: 45.66844940185547,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  color: Color(0xff53b175)),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    )
                  ]))),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Text("Groceries",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff030303))),
                Padding(
                  padding: const EdgeInsets.only(left: 155),
                  child: Text("See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff53B175))),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      width: 248.1865234375,
                      height: 105,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xfffF8A44C)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Image.asset(
                              "assets/b.png",
                              width: 71.89761352539062,
                              height: 71.89761352539062,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Pulses",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff3E423F))),
                          )
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.95),
                    child: Container(
                      width: 237.4486083984375,
                      height: 105,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xff53B175)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 19),
                            child: Image.asset(
                              "assets/b1.png",
                              width: 69.60457611083984,
                              height: 70.84121704101562,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Rice",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff3E423F))),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 24),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      width: 173.3249969482422,
                      height: 248.50999450683594,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffE2E2E2)),
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 31,
                          ),
                          Center(
                            child: Image.asset(
                              "assets/b2.png",
                              width: 107.71472930908203,
                              height: 67.10686492919922,
                            ),
                          ),
                          SizedBox(
                            height: 31,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Beef Bone",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff181725))),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("1kg, Priceg",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff7C7C7C))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("\$4.99",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff181725))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 46),
                                child: Container(
                                  width: 45.66999816894531,
                                  height: 45.66844940185547,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Color(0xff53b175)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    //
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: 173.3249969482422,
                        height: 248.50999450683594,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE2E2E2)),
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 27,
                            ),
                            Center(
                              child: Image.asset(
                                "assets/b3.png",
                                width: 112.00990295410156,
                                height: 74.60034942626953,
                              ),
                            ),
                            SizedBox(
                              height: 27,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("Broiler Chicken",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff181725))),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("1kg, Priceg",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7C7C7C))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Text("\$4.99",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff181725))),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 46),
                                    child: Container(
                                      width: 45.66999816894531,
                                      height: 45.66844940185547,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                          color: Color(0xff53b175)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    //

                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 173.3249969482422,
                              height: 248.50999450683594,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffE2E2E2)),
                                  borderRadius: BorderRadius.circular(18)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 31,
                                  ),
                                  Center(
                                    child: Image.asset(
                                      "assets/b2.png",
                                      width: 107.71472930908203,
                                      height: 67.10686492919922,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 31,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text("Beef Bone",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff181725))),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text("1kg, Priceg",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff7C7C7C))),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text("\$4.99",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff181725))),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 46),
                                        child: Container(
                                          width: 45.66999816894531,
                                          height: 45.66844940185547,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              color: Color(0xff53b175)),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]))),SizedBox(
                    height: 40,
                  ),
        ])));
  }
}
