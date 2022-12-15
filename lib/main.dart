import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:leadsdoit_test/pages/home_page/cubit/home_page_cubit.dart';
import 'package:leadsdoit_test/pages/home_page/home_page.dart';
import 'package:leadsdoit_test/pages/home_page/repo/home_page_repo.dart';
import 'package:leadsdoit_test/pages/preloader/preloader.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomePageCubit(HomePageRepository()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'Test app for LeadsDoIt',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocConsumer<HomePageCubit, HomePageState>(
          bloc: context.read<HomePageCubit>()..getEvents(),
          listener: (context, state) {
            if (state is HomePageError) {
              Fluttertoast.showToast(msg: state.message);
            }
          },
          builder: (context, state) {
            if (state is HomePageSuccess) {
              return HomePage(state.events);
            }
            return const Preloader();
          },
        ),
      ),
    );
  }
}
