import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

List<String> img = [
  "assets/d.png",
  "assets/d1.png",
  "assets/d2.png",
  "assets/d3.png",
  "assets/d4.png",
];

List<String> text = [
  "Sprite Can",
  "Diet Coke",
  "Apple & Grape",
  "Coca Cola Can",
  "Pepsi Can ",
];

List<String> text1 = [
  "325ml, Price",
  "330ml, Price",
  "2L, Price",
  "325ml, Price",
  "330ml, Price",
];

List<String> text2 = [
  "\$1.50",
  "\$1.99",
  "\$15.50",
  "\$4.99",
  "\$4.99",
];

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 55,
          ),
          Center(
            child: Text("Favorurite",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff181725))),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 413.60308837890625,
            child: Divider(
              color: Color(0xffE2E2E2),
            ),
          ),

          //
          SizedBox(
            height: 30,
          ),

          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext ctx, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Row(
                          children: [
                            Image.asset(
                              img[index],
                              width: 30.91242027282715,
                              height: 54.89927291870117,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 42),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 90,
                                    height: 20,
                                    child: Text(text[index],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff181725))),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(text1[index],
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7C7C7C)))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 65),
                              child: Text(text2[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff181725))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13),
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Container(
                          width: 363.6000061035156,
                          child: Divider(
                            color: Color(0xffE2E2E2),
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 24, right: 25),
              child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => SingleChildScrollView(
                        child: AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Icon(
                                    Icons.close,
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Image.asset(
                                  "assets/e1.png",
                                  width: 222.3528289794922,
                                  height: 221.8463134765625,
                                ),
                                SizedBox(
                                  height: 49,
                                ),
                                Row(
                                  children: [
                                    Text("Oops! Order",
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text("Failed",
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Text("Something went tembly wrong.",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7C7C7C))),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Container(
                                  width: 313,
                                  height: 67,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(19),
                                      color: Color(0xff53b175)),
                                  child: Center(
                                    child: Text(
                                      "Please Try Again",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Center(
                                  child: Text("Back to home",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            )),
                      ),
                    );
                  },
                  child: Container(
                      width: 364,
                      height: 67,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: Color(0xff53b175)),
                      child: Center(
                        child: Text("Add All To Cart",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      )))),
        ],
      ),
    );
  }
}
