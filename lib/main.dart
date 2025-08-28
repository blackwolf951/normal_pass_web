import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'pages/auth_page.dart';

void main() async {
  // 確保 Flutter 引擎和綁定已經初始化
  WidgetsFlutterBinding.ensureInitialized();
  // 初始化 Firebase 應用程式,使用自動生成的配置
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // 啟動應用程式
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // 應用程式的起始頁面
      home: const AuthPage(),
    );
  }
}
