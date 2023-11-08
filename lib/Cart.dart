import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

List<int> count = [];

List<String> img = [
  "assets/c6.png",
  "assets/c9.png",
  "assets/c10.png",
  "assets/c11.png",
];

List<String> text = [
  "Bell Pepper Red",
  "Egg Chicken Red",
  "Organic Bananas",
  "Ginger",
];

List<String> text1 = [
  "1kg, Price",
  "4pcs, Price",
  "12kg, Price",
  "250gm, Price",
];
List<String> text2 = [
  "\$4.99",
  "\$1.99",
  "\$3.00",
  "\$2.99",
];

class _CartState extends State<Cart> {
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
            child: Text("My Cart",
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
          SizedBox(
            height: 38,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext ctx, int index) {
                  for (int i = 0; i < 4; i++) {
                    count.add(1);
                  }
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: [
                            Image.asset(
                              img[index],
                              width: 70.43134307861328,
                              height: 64.68515014648438,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(text[index],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 70),
                                        child: Icon(
                                          Icons.close,
                                          color: Color(0xffB3B3B3),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(text1[index],
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7C7C7C))),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            if (count[index] > 1) {
                                              setState(() {
                                                count[index] = count[index] - 1;
                                              });
                                            }
                                          },
                                          child: Container(
                                            width: 45.66999816894531,
                                            height: 45.66844940185547,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xffB3B3B3)),
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                            ),
                                          )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 17),
                                        child: Text(count[index].toString(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 17),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              count[index] = count[index] + 1;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 45.66999816894531,
                                                height: 45.66844940185547,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xffB3B3B3)),
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                ),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Color(0xff53B175),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(text2[index],
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            Color(0xff181725))),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 360.6000061035156,
                        child: Divider(
                          color: Color(0xffE2E2E2),
                        ),
                      )
                    ],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 25),
            child: Container(
              width: 364,
              height: 67,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color(0xff53b175)),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Text("Go to Checkout",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFCFCFC))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 52),
                      child: Text("\$12.96",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
