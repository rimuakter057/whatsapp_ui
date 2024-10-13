import 'package:flutter/material.dart';
import 'package:whatsapp_ui/splash_page.dart';
import 'package:whatsapp_ui/utils/color.dart';
import 'package:whatsapp_ui/views/HomePage/home_page.dart';

void main() {
  runApp(const WhatsAppUi());
}

class WhatsAppUi extends StatelessWidget {
  const WhatsAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF000000),
        primaryColor: const Color(0xFF000000),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium:TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            color: Color(0xB3FFFFFF),
            fontWeight: FontWeight.w300,
          ),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage (),
    );
  }
}

