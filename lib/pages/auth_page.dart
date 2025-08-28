import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用 StreamBuilder 監聽 Firebase 認證狀態
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // 顯示載入畫面
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        // 如果使用者已登入,顯示主頁
        if (snapshot.hasData) {
          return const HomePage();
        } else {
          // 如果使用者未登入,顯示登入頁面
          return const LoginPage();
        }
      },
    );
  }
}
