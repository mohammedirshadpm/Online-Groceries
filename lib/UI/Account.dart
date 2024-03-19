import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

List<String> img = [
  "assets/f.png",
  "assets/f1.png",
  "assets/f2.png",
  "assets/f3.png",
  "assets/f4.png",
  "assets/f5.png",
  "assets/f6.png",
  "assets/f7.png",
];

List<String> text = [
  "Orders",
  "My Details",
  "Delivery Address",
  "Payment Methods",
  "Promo Cord",
  "Notifecations ",
  "Help",
  "About ",
];

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 69,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Image.asset(
                    "assets/e2.png",
                    width: 63.441715240478516,
                    height: 64.32317352294922,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Afsar Hossen",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "assets/e3.png",
                                width: 14.995060920715332,
                                height: 15,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Imshuvo97@gmail.com",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff7C7C7C)))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 413.60308837890625,
              child: Divider(
                color: Color(0xffE2E2E2),
              ),
            ),

            //
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 330,
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 26),
                          child: Row(
                            children: [
                              Image.asset(
                                img[index],
                                width: 18,
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 20,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 20,
                                      color: Colors.white,
                                    ),
                                    Text(text[index],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
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
                        Container(
                          width: 413.60308837890625,
                          child: Divider(
                            color: Color(0xffE2E2E2),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 52,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 25),
              child: Container(
                width: 364,
                height: 67,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color(0xfff2f3f2)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Icon(
                        Icons.logout,
                        color: Color(0xff53B175),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 71),
                      child: Text("Log Out",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff53B175))),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
