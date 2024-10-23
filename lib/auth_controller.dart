import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;

  var isLoggedIn;

  // Fungsi untuk registrasi pengguna
  Future<void> registerUser(String email, String password) async {
    try {
      isLoading.value = true; // Menandakan bahwa proses sedang berlangsung
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Success', 'Registration successful',
          backgroundColor: Colors.green);
      Get.off(LoginPage()); // Navigasi ke halaman Login setelah registrasi berhasil
    } catch (error) {
      Get.snackbar('Error', 'Registration failed: $error',
          backgroundColor: Colors.red);
    } finally {
      isLoading.value = false; // Mengubah status loading setelah proses selesai
    }
  }

  // Fungsi untuk login pengguna
  Future<void> loginUser(String email, String password) async {
    try {
      isLoading.value = true; // Menandakan bahwa proses sedang berlangsung
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Success', 'Login successful',
          backgroundColor: Colors.green);
      // Navigasi ke halaman Home atau halaman lain setelah login berhasil
      // Get.offAllNamed('/home'); // Gunakan jika sudah mendefinisikan rute
    } catch (error) {
      Get.snackbar('Error', 'Login failed: $error',
          backgroundColor: Colors.red);
    } finally {
      isLoading.value = false; // Mengubah status loading setelah proses selesai
    }
  }

  // Fungsi untuk logout pengguna
  void logout() async {
    await _auth.signOut(); // Mengeluarkan pengguna dari Firebase
    Get.offAll(LoginPage()); // Menghapus semua halaman dari stack dan kembali ke halaman login
  }
}
