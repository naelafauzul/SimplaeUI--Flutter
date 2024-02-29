import 'package:flutter/material.dart';

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/alpes.png',
                                height: 340,
                                width: 360,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 330,
                            left: 330,
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
                              ),
                            ),
                          ),

                          const Positioned(
                            top: 338,
                            left: 338,
                            child: Icon(Icons.favorite, color: Colors.red),
                        ),

                          Positioned(
                            top: 30,
                            left: 30,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              height: 40,
                              width: 40,
                              child: const Positioned(
                                top: 30,
                                left: 10,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                    ),

                    const SizedBox(height: 10),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            'Coeurdes Alpes',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Show map',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.orangeAccent),
                          Text(
                            '4.5 (355 Reviews)',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),

                    ),
                    const SizedBox(height: 20),

                    const Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
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
                      )
                    ),

                    const SizedBox(height: 30),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Facilities',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
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
                ),
              ),
              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconTextContainer(IconData icon, String text) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF176FF2).withOpacity(0.05),
        borderRadius: BorderRadius.circular(10), // Corner radius
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
