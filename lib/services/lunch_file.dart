import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SignUp extends StatelessWidget {
  final Uri url = Uri.parse(
      'https://www.bing.com/search?q=%D8%B5%D9%84%D8%A7%D8%A9+%D8%A7%D9%84%D8%B8%D9%87%D8%B1+%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D8%A9&cvid=14ae1ffa57cf4701904515d94ac6490c&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQABhAMgYIAhBFGDzSAQg3MzY4ajBqOagCBrACAQ&FORM=ANAB01&PC=EDGEDSE');
  final Uri phoneNumber = Uri.parse("01061906455");
  // PhoneNumber sms = tel.parse('https://www.bing.com/search?q=%D8%B5%D9%84%D8%A7%D8%A9+%D8%A7%D9%84%D8%B8%D9%87%D8%B1+%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D8%A9&cvid=14ae1ffa57cf4701904515d94ac6490c&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQABhAMgYIAhBFGDzSAQg3MzY4ajBqOagCBrACAQ&FORM=ANAB01&PC=EDGEDSE');
  final Uri whatsApp = Uri.parse("https://wa.me/+0201061906455");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                _launchUrl();
              },
              child: const Text("Url")),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () async {
                await canLaunchUrlString("$phoneNumber");
              },
              child: const Text("phone")),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                launchUrl(whatsApp);
              },
              child: const Text("whats App")),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}