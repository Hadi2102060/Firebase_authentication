import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:job_interview_quiz_app/firebase_options.dart';
import 'package:job_interview_quiz_app/routes/appRoutes.dart';
import 'package:job_interview_quiz_app/services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Firebase initialization error: $e');
  }
  
  // AuthService Register করুন
  Get.put<AuthService>(AuthService(), permanent: true);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Interview Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey.shade50,
        fontFamily: 'Poppins',
      ),
      initialRoute: AppRoutes.loginRoute,
      getPages: AppRoutes.routes,
      defaultTransition: Transition.fadeIn,
    );
  }
}