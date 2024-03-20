import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../BLOC/Sing_In/sing_in_bloc.dart';
import '../Repository/ModelClass/SingInModel.dart';
import 'SingUp.dart';
import 'bottom navigation.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

late SingInModel data;

class _LoginState extends State<Login> {
  @override
  void initState() {
      BlocProvider.of<SingInBloc>(context)
         .add(FetchSingInEvent(password: password.text.trimRight(), email: email.text.trimRight()));
    super.initState();
   }
  // var _formKey = GlobalKey<FormState>();
  //
  // void _submit() {
  //   final isValid = _formKey.currentState!.validate();
  //   if (isValid == true) {
  //     BlocProvider.of<SingInBloc>(context)
  //         .add(FetchSingInEvent(email: email.text.trimRight(),password: password.text));
  //   }
  //   _formKey.currentState!.save();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 77,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 160),
              child: Image.asset(
                "assets/a8.png",
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.18),
              child: Text("Loging",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.18),
              child: Text("Enter your emails and password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.88),
              child: Text("Email",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.88),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      hintText: "Enter your email",
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 24.83),
              child: Container(
                width: 364,
                child: Divider(
                  color: Color(0xffE2E2E2),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.88),
              child: Text("Password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              width: 500,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.88),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      suffix: Padding(
                        padding: const EdgeInsets.only(left: 50, right: 20),
                        child: Image.asset(
                          "assets/a9.png",
                          width: 19.934654235839844,
                          height: 18.920053482055664,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                      hintText: "Enter your password",
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 24.83),
              child: Container(
                width: 364,
                child: Divider(
                  color: Color(0xffE2E2E2),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220),
              child: Text("Forgot Password?",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff181725))),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 24.83),
              child: BlocListener<SingInBloc, SingInState>(
                listener: (context, state) {
                  if (state is SingInblocLoading) {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return Container(
                          width: 60.w,
                          height: 60.h,
                          child: Center(
                            child: SizedBox(
                              width: 60.w,
                              height: 60.h,
                              child: LoadingIndicator(
                                indicatorType:
                                Indicator.ballSpinFadeLoader,
                                colors: [Colors.white],
                                strokeWidth: 1.w,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                  if (state is SingInblocError) {
                    Navigator.of(context).pop();
                    Text('error');
                  }
                  if (state is SingInblocLoaded) {
                    data = BlocProvider
                        .of<SingInBloc>(context)
                        .singInModel;
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => BottomNavigation()));
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<SingInBloc>(context).add(
                        FetchSingInEvent(
                            email: email.text,password: password.text));
                  },
                child: Container(
                  width: 364,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xff53b175)),
                  child: Center(
                    child: Text("Log In",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                ),
              ),
              )),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 86),
              child: Row(
                children: [
                  Text("Don’t have an account?",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725))),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => SingUp()));
                      },
                      child: Text("Singup",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff53B175))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ],
        ),
      ),
    );
  }
}
