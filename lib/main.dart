import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart'; 
import 'login_page.dart';
import 'register_page.dart';
import 'home_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Inisialisasi SharedPreferences
  await Get.putAsync(() async => await SharedPreferences.getInstance());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login', // Rute awal
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()), // Rute untuk LoginPage
        GetPage(name: '/register', page: () => RegisterPage()), // Rute untuk RegisterPage
        GetPage(name: '/home', page: () => HomePage()), // Rute untuk HomePage
      ],
    );
  }
}
