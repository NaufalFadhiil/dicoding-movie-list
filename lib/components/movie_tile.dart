import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  final String movieName;
  final String imagePath;

  const MovieTile({
    super.key,
    required this.movieName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Kartu gambar dengan radius
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 6),
        // Teks di bawah gambar
        Text(
          movieName,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            fontFamily: 'Poppins'
          ),
        ),
      ],
    );
  }
}
