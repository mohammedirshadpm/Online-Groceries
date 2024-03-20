import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'BLOC/SingUp/sing_up_bloc.dart';
import 'BLOC/Sing_In/sing_in_bloc.dart';
import 'UI/HomeScreen.dart';

const basepath = 'http://62.72.12.251:9876/api';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => SingUpBloc(),
                ),
                BlocProvider(
                  create: (context) => SingInBloc(),
                ),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: Screen1(),
              ));
        });
  }
}
