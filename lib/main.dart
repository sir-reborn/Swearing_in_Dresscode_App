import 'package:flutter/material.dart';
import 'package:swearing_in/additional_guidelines.dart';
import 'package:swearing_in/footnote.dart';
import 'package:swearing_in/header.dart';
import 'package:swearing_in/dress_code.dart';

void main() {
  runApp(const DressCodeApp());
}

class DressCodeApp extends StatelessWidget {
  const DressCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swearing In Dress Code',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7F0782), // Changed to purple
          primary: const Color(0xFF6A1B9A), // Purple primary color
          secondary: const Color(0xFFAB47BC), // Lighter purple accent
          surface: const Color(0xFFECF0F1),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF6A1B9A), // Purple background
          surfaceTintColor: const Color(
            0xFF6A1B9A,
          ), // Purple overlay when scrolled
          elevation: 0,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        useMaterial3: true,
        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
      ),
      home: const DressCodeHomePage(),
    );
  }
}

class DressCodeHomePage extends StatelessWidget {
  const DressCodeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(title: const Text('Swearing In Dress Code')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderSection(),
            const SizedBox(height: 24),
            const DressCodeSection(
              title: 'Dress Code for Men',
              subtitle: 'English Dress Code',
              items: [
                'Buttoned down short sleeve or long sleeve dress(packing) shirt. (with or without ties, bows, jacket or blazers/tuxedos).',
                'Pant trousers.',
                'Corporate covered shoes (Oxfords, Derbies, Brogues, Loafers, and Dress Boots).',
                'Sneakers & Canvas.',
              ],
              imagePaths: [
                'assets/images/men_dress1.jpg',
                'assets/images/men_dress4.jpeg',
                'assets/images/men_dress3.jpg',
                'assets/images/men_dress5.jpeg',
                'assets/images/men_dress6.jpeg',
                'assets/images/men_dress7.jpeg',
                'assets/images/men_dress8.jpeg',
                'assets/images/men_dress9.jpeg',
                'assets/images/men_dress10.jpeg',
                'assets/images/men_dress12.jpeg',
              ],
              subtitle2: 'Native Dress Code',
              items2: [
                'Native attires.',
                'Corporate covered shoes (Oxfords, Derbies, Brogues, Loafers, and Dress Boots).',
                'Half shoes.',
              ],
              imagePaths2: [
                'assets/images/men_dress13.jpeg',
                'assets/images/men_dress14.jpeg',
                'assets/images/men_dress8.jpeg',
                'assets/images/men_dress9.jpeg',
                'assets/images/men_dress15.jpeg',
                'assets/images/men_dress16.jpeg',
              ],
            ),
            const SizedBox(height: 32),
            const DressCodeSection(
              title: 'Dress Code for Women',
              subtitle: 'English Dress Code',
              items: [
                'Buttoned down short sleeve or long sleeve dress(packing) shirt (with or without ties, jacket or blazers).',
                'Chiffon top.',
                'Corporate skirt or trouser (knee-length or longer).',
                'Corporate Gown (knee-length or longer).',
                'Corporate covered shoes (pumps, loafers, boots or dressy flats).',
                'Heels.',
              ],
              imagePaths: [
                'assets/images/women_dress1.jpeg',
                'assets/images/women_dress2.jpeg',
                'assets/images/women_dress3.jpg',
                'assets/images/women_dress4.jpeg',
                'assets/images/women_dress5.jpeg',
                'assets/images/women_dress6.jpeg',
                'assets/images/women_dress7.jpeg',
                'assets/images/women_dress8.jpeg',
                'assets/images/women_dress9.jpeg',
                'assets/images/women_dress10.jpeg',
                'assets/images/women_dress11.jpeg',
                'assets/images/women_dress12.jpeg',
              ],
              subtitle2: 'Native Dress Code',
              items2: ['Native attires.', 'Corporate Shoes.', 'Heels.'],
              imagePaths2: [
                'assets/images/women_dress13.jpeg',
                'assets/images/women_dress14.jpeg',
                'assets/images/women_dress15.jpeg',
                'assets/images/women_dress11.jpeg',
              ],
            ),
            const SizedBox(height: 32),
            const AdditionalGuidelines(),
            const SizedBox(height: 40),
            FooterSection(context: context),
          ],
        ),
      ),
    );
  }
}
