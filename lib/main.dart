import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app_ui/pages/category_page.dart';
import 'package:movie_app_ui/pages/home_page.dart';
import 'package:movie_app_ui/pages/movie_page.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:const Color(0xFF0F111D)
      ),
      routes: {
        "/":(context)=>HomePage(),
        "categoryPage":(context)=>CategoryPage(),
        "moviePage":(context)=>MoviePage(),
      },
    );
  }
}
