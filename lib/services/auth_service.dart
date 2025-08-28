import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // 取得當前使用者狀態的 Stream
  Stream<User?> get user {
    return _auth.authStateChanges();
  }

  // 註冊新用戶
  Future<User?> signUp(String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user;
      if (user != null) {
        // 發送驗證信
        await user.sendEmailVerification();
        print("Verification email sent to ${user.email}");
      }
      return user;
    } on FirebaseAuthException catch (e) {
      print('Sign up failed: ${e.message}');
      return null;
    }
  }

  // 登入用戶
  Future<User?> signIn(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user;
      if (user != null && !user.emailVerified) {
        print("Login failed: Please verify your email first.");
        await _auth.signOut();
        return null;
      }
      return user;
    } on FirebaseAuthException catch (e) {
      print('Login failed: ${e.message}');
      return null;
    }
  }

  // 登出用戶
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
