import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_ui/Routes/app_pages.dart';

void main() {
  runApp(InstagramUI());
}

class InstagramUI extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Instagram UI',
      initialRoute: AppPages.INTIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
