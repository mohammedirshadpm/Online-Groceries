import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled8/UI/Account.dart';
import 'package:untitled8/UI/Cart.dart';
import 'package:untitled8/UI/Expolre.dart';
import 'package:untitled8/UI/Favourite.dart';
import '../BLOC/GetAllProducts/get_all_products_bloc.dart';
import '../Repository/ModelClass/GetAllProductsModel.dart';
import '../main.dart';
import 'Screen10.dart';

class BottomHome extends StatefulWidget {
  const BottomHome({Key? key}) : super(key: key);

  @override
  State<BottomHome> createState() => _BottomHomeState();
}
late GetAllProductsModel data;
int currentIndex = 0;

class _BottomHomeState extends State<BottomHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child:
                Column(
                                crossAxisAlignment: CrossAxisAlignment.start, children: [
                      SizedBox(
                        height: 60.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 160.w),
                        child: Image.asset(
                          "assets/a8.png",
                          width: 40.w,
                          height: 40.h,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 85.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7.w),
                              child: Text("Dhaka, Banassre",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff4C4F4D))),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.w, right: 25.w),
                        child: Container(
                          width: 364.w,
                          height: 51.56840133666992.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Color(0xfff1f2f2)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: Icon(
                                  Icons.search,
                                ),
                              ),
                              SizedBox(
                                width: 200.w,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.w),
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
                      CarouselSlider.builder(
                        options: CarouselOptions(
                          onPageChanged: (index, a) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          //Slider Container properties
                          height: 180.h,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 600),
                          viewportFraction: 1.0,
                        ),
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index, int realIndex) {
                          // String url =data1[index].banner![0].url.toString();
                          // String newUrl = url.replaceFirst("http://127.0.0.1/api", "");
                          return Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0.r),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/a10.png",
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 107.h, left: 15.w),
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      color: Color(0xff7ff1f1f1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: AnimatedSmoothIndicator(
                                      activeIndex: currentIndex,
                                      count: 3,
                                      effect:
                                          JumpingDotEffect(dotHeight: 7.h, dotWidth: 7.w),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BlocBuilder<GetAllProductsBloc, GetAllProductsState>(
  builder: (context, state) {
    if (state is GetAllProductsblocLoading) {
      return SizedBox();
    }
    if (state is GetAllProductsblocError) {
      return Text(
        "ERROR",
        // style: TextStyle(color: Colors.white),
      );
    }
    if (state is GetAllProductsblocLoaded) {
      data = BlocProvider
          .of<GetAllProductsBloc>(context)
          .getAllProductsModel;
      return GridView.count(
        childAspectRatio: 50 / 75,
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(
          10,
              (index) {
            return Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Container(
                width: 50.w,
                height: 400.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffE2E2E2)),
                    borderRadius: BorderRadius.circular(18.r)),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: Image.asset(
                          data.data![index].image.toString(),
                          width: 99.88697814941406,
                          height: 79.4321517944336,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Text(data.data![0].name.toString(),
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff181725))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Text(data.data![0].price.toString(),
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff7C7C7C))),
                      ),
                      SizedBox(
                        height: 36.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Row(
                          children: [
                            Text("\$4.99",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff181725))),
                            Padding(
                              padding: EdgeInsets.only(left: 46.w),
                              child: Container(
                                width: 45.66999816894531,
                                height: 45.66844940185547,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(17.r),
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
            );
          },
        ),
      );
    }
    return SizedBox();
  }),
                          ),
                        ],
                      )
                    ])));
  }
}
