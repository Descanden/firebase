import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_controller.dart';

class HomePage extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              // Panggil fungsi logout ketika tombol ditekan
              _authController.logout();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to Home Page!', // Pesan sambutan di halaman Home
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
