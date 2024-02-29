import 'package:flutter/material.dart';

class AlpesScreen extends StatelessWidget {
  const AlpesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: const [
              ImageSection(image: 'assets/images/alpes.png'),
              SizedBox(height: 10),
              TitleSection(title: "Courdes Alpes"),
              ReviewSection(review:'4.5 (355 Reviews)'),
              SizedBox(height: 20),
              DescSection(),
              SizedBox(height: 30),
              FacilitiesSection(),
              SizedBox(height: 30),
              BottomSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  final String image;

  const ImageSection({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(image,
              height: 340,
              width: 380,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 340,
          right: 20,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(Icons.favorite, color: Colors.red),
            ),
          ),
        ),

        Positioned(
          top: 30,
          left: 15,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            height: 35,
            width: 35,
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  final String title;

  const TitleSection({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const Spacer(),
          const Text(
            'Show map',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
  }
}

class ReviewSection extends StatelessWidget {
  final String review;

  const ReviewSection({required this.review, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          const Icon(Icons.star, color: Colors.orangeAccent),
          Text(
            review,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      );
  }
  }

class DescSection extends StatelessWidget {
  const DescSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ...',
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text('Read more',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.blueAccent,)
          ],
        )

      ],
    );
  }
}

class FacilitiesSection extends StatelessWidget {
  const FacilitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
            'Facilities',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildIconTextContainer(Icons.wifi, '1 Heater'),
            _buildIconTextContainer(Icons.restaurant, 'Dinner'),
            _buildIconTextContainer(Icons.bathtub_outlined, '1 Tub'),
            _buildIconTextContainer(Icons.waves, 'Pool'),
          ],
        ),
      ],
    );
  }

  Widget _buildIconTextContainer(IconData icon, String text) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF176FF2).withOpacity(0.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.grey[400]),
          const SizedBox(height: 8),
          Text(text, style: TextStyle(color: Colors.grey[400])),
        ],
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Price',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                )
            ),
            Text(
              '\$199',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],

        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            backgroundColor: const Color(0xFF176FF2),
          ),
          child: const Row(
            children: [
              Text('Book Now',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
  }
