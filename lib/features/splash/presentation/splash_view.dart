import 'package:bookly/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    // تشغيل الفيديو من الـ assets
    _controller = VideoPlayerController.asset("assets/videos/splash.mp4")
      ..initialize().then((_) {
        setState(() {}); // إعادة بناء الواجهة بعد التهيئة
        _controller.play(); // يبدأ الفيديو
      });

    // الانتقال بعد انتهاء الفيديو
    _controller.addListener(() {
      if (_controller.value.position >= _controller.value.duration) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnbordingViews()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // تحرير الذاكرة
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // خلفية سوداء أثناء التحميل
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight, // يبدأ من فوق
            end: Alignment.bottomCenter, // ينتهي تحت
            colors: [
              Colors.green, // اللون اللي تحت
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Color.fromARGB(255, 4, 34, 6), // اللون اللي فوق
            ],
          ),
        ),
        child: Center(
          child:
              _controller.value.isInitialized
                  ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                  : const CircularProgressIndicator(), // مؤشر تحميل
        ),
      ),
    );
  }
}
