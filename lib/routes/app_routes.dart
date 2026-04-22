import '../features/auth/pages/login_page.dart';
import '../features/auth/pages/register_page.dart';
import '../features/auth/pages/forgot_password_page.dart';
import '../features/auth/pages/reset_password_page.dart';
import '../features/user/common/pages/home_page.dart';
import '../features/user/common/pages/waiting_page.dart';

class AppRoutes {
  static final routes = {
    "/login": (context) => LoginPage(),
    "/register": (context) => const RegisterPage(),
    "/forgot": (context) => const ForgotPasswordPage(),
    "/reset": (context) => const ResetPasswordPage(),
    "/waiting": (context) => const WaitingPage(),
    "/home": (context) => const HomePage(),
  };
}
