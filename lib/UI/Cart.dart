import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screen13.dart';

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

          //
          Padding(
              padding: const EdgeInsets.only(left: 24, right: 25),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (builder) {
                        return StatefulBuilder(builder: (BuildContext context,
                            StateSetter setState /*You can rename this!*/) {
                          return Container(
                            width: 375,
                            height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                ),
                                color: Colors.white),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Row(
                                      children: [
                                        Text("Checkout",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black)),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 180),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Icon(
                                              Icons.close,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: 413.9906311035156,
                                    child: Divider(
                                      color: Color(0xffE2E2E2B2),
                                    ),
                                  ),

                                  //
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Row(
                                      children: [
                                        Text("Delivery",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff7C7C7C))),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 110),
                                          child: Text("Select Method",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 25),
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
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Row(
                                      children: [
                                        Text("Pament",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff7C7C7C))),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 195),
                                          child: Image.asset(
                                            "assets/d5.png",
                                            width: 21.614089965820312,
                                            height: 16,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 25),
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
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Row(
                                      children: [
                                        Text("Promo Code",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff7C7C7C))),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 83),
                                          child: Text("Pick discount",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 25),
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
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Row(
                                      children: [
                                        Text("Total Cost",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff7C7C7C))),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 150),
                                          child: Text("\$13.97",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 25),
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
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                        "By placing an order you agree to our",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff7C7C7C))),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Row(
                                      children: [
                                        Text("Terms",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 2),
                                          child: Text("And",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff7C7C7C))),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 2),
                                          child: Text("Conditions",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 24, right: 25),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) => Screen13()));
                                      },
                                      child: Container(
                                          width: 364,
                                          height: 67,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(19),
                                              color: Color(0xff53b175)),
                                          child: Center(
                                            child: Text("Place Order",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white)),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                      });
                },

                //
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
              ))
        ],
      ),
    );
  }
}
