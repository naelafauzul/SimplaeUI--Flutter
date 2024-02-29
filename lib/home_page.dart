import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            ImageSection(imagePath: 'assets/images/pantai.jpeg'),
            SizedBox(height: 30),
            InfoSection(),
            SizedBox(height: 30),
            ActionButtonsSection(),
            DescriptionSection(),
          ],
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  final String imagePath;

  const ImageSection({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/pantai.jpeg'),
    );
  }
}

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pantai Teluk Penyu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                "Cilacap, Jawa Tengah",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.deepOrange,
              ),
              Text(
                "4,2",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ActionButtonsSection extends StatelessWidget {
  const ActionButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.call,
                color: Colors.blue,
                size: 18,
              ),
              SizedBox(height: 10),
              Text(
                "CALL",
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.near_me,
                color: Colors.blue,
                size: 18,
              ),
              SizedBox(height: 10),
              Text(
                "ROUTE",
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.blue,
                size: 18,
              ),
              SizedBox(height: 10),
              Text(
                "SHARE",
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Text(
        "Pantai Teluk Penyu, yang terletak di Cilacap, Jawa Tengah, adalah destinasi wisata yang memukau dengan pesona alamnya. Dikenal dengan sebutan Teluk Penyu karena sering dihuni oleh penyu yang datang ke pantai ini untuk bertelur, tempat ini menjadi luar biasa karena pelestarian dan perlindungan satwa laut. Keindahan pantai ini tidak hanya terletak pada pasir putihnya yang lembut dan air lautnya yang jernih, tetapi juga pada hamparan hutan bakau yang tumbuh subur di sekitar wilayah pantai. Wisatawan dapat menikmati suasana tenang dan damai sambil mengamati kehidupan laut yang kaya akan keanekaragaman biota, menjadikan Pantai Teluk Penyu sebagai tempat yang ideal untuk bersantai dan menikmati keajaiban alam.\n\nSelain keindahan alamnya, Pantai Teluk Penyu juga menawarkan berbagai kegiatan rekreasi dan olahraga air. Para pengunjung dapat mengeksplorasi kehidupan bawah laut melalui snorkeling atau menyelam, sambil menikmati keindahan terumbu karang yang indah. Terdapat juga fasilitas penyewaan peralatan seperti kayak dan perahu, memungkinkan pengunjung untuk menjelajahi lebih jauh area sekitar pantai. Dengan suasana yang ramah lingkungan dan upaya konservasi yang kuat, Pantai Teluk Penyu di Cilacap tidak hanya menjadi destinasi liburan yang menarik tetapi juga mempromosikan kesadaran akan pentingnya menjaga keberlanjutan lingkungan laut.",
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

