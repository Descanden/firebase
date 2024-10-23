import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_controller.dart'; // Pastikan untuk mengimpor AuthController

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthController _authController = Get.put(AuthController());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose(); // Membersihkan kontroler email
    _passwordController.dispose(); // Membersihkan kontroler password
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'), // Judul halaman
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'), // Label untuk field email
            ),
            TextField(
              controller: _passwordController,
              obscureText: true, // Menyembunyikan teks password
              decoration: InputDecoration(labelText: 'Password'), // Label untuk field password
            ),
            SizedBox(height: 16), // Jarak antara field dan tombol
            Obx(() {
              return ElevatedButton(
                onPressed: _authController.isLoading.value
                    ? null // Menonaktifkan tombol jika loading
                    : () {
                        // Memanggil fungsi registerUser dari AuthController
                        _authController.registerUser(
                          _emailController.text,
                          _passwordController.text,
                        );
                      },
                child: _authController.isLoading.value
                    ? CircularProgressIndicator() // Menampilkan loader jika loading
                    : Text('Register'), // Teks tombol
              );
            }),
          ],
        ),
      ),
    );
  }
}
