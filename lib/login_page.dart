import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth_controller.dart'; // Pastikan untuk mengimpor AuthController
import 'register_page.dart'; // Impor RegisterPage untuk navigasi

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        title: Text('Login'), // Judul halaman
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
                        // Memanggil fungsi loginUser dari AuthController
                        _authController.loginUser(
                          _emailController.text,
                          _passwordController.text,
                        );
                      },
                child: _authController.isLoading.value
                    ? CircularProgressIndicator() // Menampilkan loader jika loading
                    : Text('Login'), // Teks tombol
              );
            }),
            SizedBox(height: 16), // Jarak sebelum tombol Registrasi
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"), // Teks untuk memberitahu pengguna
                TextButton(
                  onPressed: () {
                    Get.to(RegisterPage()); // Navigasi ke halaman Registrasi
                  },
                  child: Text('Register'), // Teks tombol Registrasi
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
