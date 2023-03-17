import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 4,
      ),
      () => Navigator.pushReplacementNamed(context, '/home_page'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tamer Alkishawi',
                style: GoogleFonts.palanquinDark(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: 5,
                  wordSpacing: 5,
                ),
              ),
              Text(
                'APP',
                style: GoogleFonts.palanquinDark(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    letterSpacing: 5,
                    height: 1),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.teal.shade500,
              Colors.teal.shade200,
            ],
          ),
        ),
      ),
    );
  }
}
