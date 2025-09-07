import 'package:bookly/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    // تبدأ من خارج الشاشة شمال (-1.5, 0) وتنتهي في النص (0,0)
    _animation = Tween<Offset>(
      begin: const Offset(-2.5, 0), // خارج الشاشة يسار
      end: Offset.zero, // مكانها الطبيعي
//من الشمال لليمين (-2.5,0)    (0,2.5)  

    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut, // حركة ناعمة
      ),
    );

    _controller.forward();

    // بعد الأنيميشن + ثانية واحدة → يروح لـ OnbordingViews
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnbordingViews()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
              center: const Alignment(0.8, -0.8), // مكان المركز (يمين-فوق)
      radius: 1.2, // مدى الانتشار
      colors: [
        const Color(0xFF003319), // أخضر غامق
        Color.fromARGB(255, 0, 14, 7), // أخضر غامق
         // ينتهي بالأسود
      ],
      stops: [0.0, 1.0], // بداية ونهاية التدريج
          ),
        ),
        child: Center(
          child: SlideTransition(
            position: _animation,
            child: Image.asset(
              "assets/images/logosplash.png",
              width: 280,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
