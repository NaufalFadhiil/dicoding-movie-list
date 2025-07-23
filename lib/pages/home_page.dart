import 'package:flutter/material.dart';
import 'package:movie_list/components/movie_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'Movies';

  // List FILM
  final List<Map<String, String>> movies = [
    {'title': 'Fight Club', 'image': 'lib/images/fight_club.jpg'},
    {'title': 'Breaking Bad', 'image': 'lib/images/breaking_bad.jpg'},
    {'title': 'Super Man', 'image': 'lib/images/superman.jpg'},
    {'title': 'Top Gun Maverick', 'image': 'lib/images/top_gun.jpg'},
    {'title': 'Oppenheimer', 'image': 'lib/images/oppenheimer.jpg'},
    {'title': '1917', 'image': 'lib/images/1917.jpg'},
  ];

  final List<Map<String, String>> anime = [
    {'title': 'Naruto Shippuden', 'image': 'lib/images/naruto.jpg'},
    {'title': 'Attack on Titan', 'image': 'lib/images/aot.jpg'},
    {'title': 'Your Name', 'image': 'lib/images/your_name.jpg'},
    {'title': 'Jujutsu Kaisen', 'image': 'lib/images/jujutsu_kaisen.jpg'},
    {'title': 'Haikyu', 'image': 'lib/images/haikyu.jpg'},
    {'title': 'One Piece', 'image': 'lib/images/one_piece.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    final items = selectedCategory == 'Movies' ? movies : anime;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 65),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Hi, There!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color(0xFF2b70a8),
                ),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Here's You're Favorite Movies",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height: 5),
            Divider(height: 1, color: Colors.grey),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    "Select Category",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Color(0xFF2b70a8),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  _buildCategoryButton('Movies'),
                  const SizedBox(width: 16),
                  _buildCategoryButton('Anime'),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                padding: EdgeInsets.symmetric(horizontal: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return MovieTile(
                    movieName: item['title']!,
                    imagePath: item['image']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String category) {
    final bool isSelected = selectedCategory == category;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Column(
        children: [
          Text(
            category,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              color: isSelected ? Color(0xFF2b70a8) : Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            width: 40,
            height: 3,
            color: isSelected ? Color(0xFF2b70a8) : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
