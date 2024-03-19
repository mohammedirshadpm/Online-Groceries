import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screen12.dart';

class Screen11 extends StatefulWidget {
  const Screen11({Key? key}) : super(key: key);

  @override
  State<Screen11> createState() => _Screen11State();
}

List<String> img = [
  "assets/c.png",
  "assets/c1.png",
  "assets/c2.png",
  "assets/c3.png",
  "assets/c4.png",
  "assets/c5.png",
];
List<String> text = [
  "Diet Coke",
  "Sprite Can",
  "Apple & Grape\nJuice",
  "Orenge Juice",
  "Coca Cola Can",
  "Pepsi Can ",
];
List<String> text1 = [
  "355ml, Price",
  "355ml, Price",
  "2L, Price",
  "2L, Price",
  "325ml, Price",
  "325ml, Price",
];
List<String> text2 = [
  "\$1.99",
  "\$1.50",
  "\$15.99",
  "\$15.99",
  "\$4.99",
  "\$4.99",
];

class _Screen11State extends State<Screen11> {
  @override
  Widget build(BuildContext context) {
    double itemHeight = 248.50999450683594;
    double itemWidth = 173.3249969482422;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 57,
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
                  padding: const EdgeInsets.only(left: 80),
                  child: Text("Beverages",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 98),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Screen12()));
                    },
                    child: Image.asset(
                      "assets/b14.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 29,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25),
              child: SizedBox(
                height: 494,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: (itemWidth / itemHeight),
                  shrinkWrap: true,
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 15.h, right: 24.w),
                      child: Container(
                        width: 173.3249969482422,
                        height: 248.50999450683594,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE2E2E2)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Image.asset(
                                img[index],
                                width: 50.4915657043457,
                                height: 89.36312866210938,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: SizedBox(
                                height: 25,
                                child: Text(text[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(text1[index],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7C7C7C))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(text2[index],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black)),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
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
                    );
                  }),
                ),
              ))
        ],
      ),
    );
  }
}
