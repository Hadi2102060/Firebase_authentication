import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:job_interview_quiz_app/screens/auth/login_screen.dart';
import 'package:job_interview_quiz_app/screens/auth/signup_screen.dart';
import 'package:job_interview_quiz_app/screens/auth/forgot_password_screen.dart';
import 'package:job_interview_quiz_app/screens/auth/email_verification_screen.dart';
import 'package:job_interview_quiz_app/screens/auth/verification_success_screen.dart';
import 'package:job_interview_quiz_app/screens/homescreen.dart';
import 'package:job_interview_quiz_app/screens/quiz_screen.dart';
import 'package:job_interview_quiz_app/screens/success_Screen.dart';

class AppRoutes {
  static const String authRoute = '/auth';
  static const String loginRoute = '/login';
  static const String signupRoute = '/signup';
  static const String forgotPasswordRoute = '/forgot-password';
  static const String emailVerification = '/email-verification';
  static const String verificationSuccess = '/verification-success';
  static const String homeRoute = '/home';
  static const String quizScreen = '/quiz-screen';
  static const String resultScreen = '/result-screen';

  static List<GetPage> routes = [
    // Auth Routes
    GetPage(name: loginRoute, page: () => LoginScreen()),
    GetPage(name: signupRoute, page: () => SignupScreen()),
    GetPage(name: forgotPasswordRoute, page: () => ForgotPasswordScreen()),
    GetPage(name: emailVerification, page: () => EmailVerificationScreen()),
    GetPage(name: verificationSuccess, page: () => VerificationSuccessScreen()),

    // App Routes
    GetPage(name: homeRoute, page: () => HomeScreen()),
    GetPage(name: quizScreen, page: () => QuizScreen()),
    GetPage(name: resultScreen, page: () => SuccessScreen()),
  ];
}
