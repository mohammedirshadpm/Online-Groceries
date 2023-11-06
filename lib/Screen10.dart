import 'package:flutter/material.dart';

class Screen10 extends StatefulWidget {
  const Screen10({super.key});

  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
            child: Text("Naturel Red Apple",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff181725))),
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
          )
        ],
      ),
    );
  }
}
/