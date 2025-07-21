import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        // Tombol back akan muncul secara otomatis jika halaman ini dipush dari Navigator
      ),
      body: const Center(child: Text("Isi Halaman")),
    );
  }
}
