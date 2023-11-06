import 'package:flutter/material.dart';
import 'package:untitled8/Expolre.dart';

class Screen10 extends StatefulWidget {
  const Screen10({super.key});

  @override
  State<Screen10> createState() => _Screen10State();
}

bool liked = false;
int count = 1;

class _Screen10State extends State<Screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 413.60308837890625,
              height: 371.4407958984375,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                  color: Color(0xfff2f3f2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 56,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 265),
                          child: Image.asset(
                            "assets/b4.png",
                            width: 18.458351135253906,
                            height: 18.459716796875,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/b5.png",
                      width: 329.33648681640625,
                      height: 199.18280029296875,
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 155),
                    child: Row(
                      children: [
                        Container(
                            width: 15.893439292907715,
                            height: 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Color(0xff53b175))),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Container(
                              width: 3,
                              height: 3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Color(0xffb3b3b3))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Container(
                              width: 3,
                              height: 3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Color(0xffb3b3b3))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text("Naturel Red Apple",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff181725))),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          liked = !liked;
                        });
                      },
                      child: liked == false
                          ? Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Color(0xff7C7C7C),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ))
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("1kg, Price",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              height: 51,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (count > 1) {
                        setState(() {
                          count = count - 1;
                        });
                      }
                    },
                    child: Container(
                      width: 17,
                      height: 2.8375091552734375,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Color(0xffB3B3B3)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 45.66999816894531,
                      height: 45.66844940185547,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE2E2E2)),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Center(
                        child: Text(count.toString(),
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181725))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          count = count + 1;
                        });
                      },
                      child: Image.asset(
                        "assets/b6.png",
                        width: 17,
                        height: 17,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 133),
                    child: Text("\$4.99",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff181725))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: 363.9869079589844,
                child: Divider(
                  color: Color(0xffE2E2E2B2),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text("Product Detail",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725))),
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: Icon(
                      Icons.expand_more,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                  "Apples are nutritious. Apples may be good for weight loss.\napples may be good for your heart. As part of a healtful\nand varied diet.",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: 363.9869079589844,
                child: Divider(
                  color: Color(0xffE2E2E2B2),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text("Nutritions",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725))),
                  Padding(
                    padding: const EdgeInsets.only(left: 168),
                    child: Container(
                      width: 33.614994049072266,
                      height: 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffebebeb)),
                      child: Center(
                        child: Text("100gr",
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff7C7C7C))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: 363.9869079589844,
                child: Divider(
                  color: Color(0xffE2E2E2B2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text("Review",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725))),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Image.asset(
                      "assets/b7.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Explore()));
                },
                child: Container(
                  width: 364,
                  height: 67,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xff53b175)),
                  child: Center(
                    child: Text("Add To Basket",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
