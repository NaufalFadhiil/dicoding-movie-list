import 'package:flutter/material.dart';
import 'package:movie_list/pages/home_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // LOGO
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 150.0,
              left: 115.0,
              right: 80.0,
            ),
            child: Image.asset(
              'lib/images/logo_start.png',
              width: 200,
              height: 250,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0, top: 100.0),
            child: Text(
              'Welcome to Movie List',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Text(
            'Find your favorite movies and series',
            style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
          ),
          const SizedBox(height: 80),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2b70a8),
              ),
              padding: EdgeInsets.all(25.0),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],

        // Text Welcome User

        // Button Navigation
      ),
    );
  }
}
