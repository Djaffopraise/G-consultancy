import 'package:flutter/material.dart';
import 'package:project/screens/book.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> providers = [
    {
      'image': 'assets/images/doctor.PNG',
      'name': 'Dr. Jean Duff',
      'specialty': 'Dermatologist Consultation',
      'rating': 4.8,
      'reviews': 126,
    },
    {
      'image': 'assets/images/Capture222.PNG',
      'name': 'Dr. Joel muttarh',
      'specialty': 'Therapist Consultation',
      'rating': 4.8,
      'reviews': 126,
    },
    {
      'image': 'assets/images/doctor.PNG',
      'name': 'Dr. Natalie Ula',
      'specialty': 'Dental Consultation',
      'rating': 4.8,
      'reviews': 126,
    },
    {
      'image': 'assets/images/doctor.PNG',
      'name': 'Dr. Ula',
      'specialty': 'Therapist Consultation',
      'rating': 4.8,
      'reviews': 126,
    },
    {
      'image': 'assets/images/doctor.PNG',
      'name': 'Dr. John Puff Puff',
      'specialty': 'Nutritionist',
      'rating': 4.8,
      'reviews': 126,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 52, 103, 8),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, welcome',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 27, 26, 26),
                      ),
                    ),
                    Text(
                      'Praise B',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 19, 19, 19),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                const Icon(
                  Icons.notifications,
                  size: 28,
                  color: Color.fromARGB(255, 15, 15, 15),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Services',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: providers.length,
              itemBuilder: (context, index) {
                final provider = providers[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppointmentPage(
                            provider: provider), // Pass provider data
                      ),
                    );
                  },
                  child: ProviderCard(provider: provider),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProviderCard extends StatelessWidget {
  final Map<String, dynamic> provider;

  const ProviderCard({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(provider['image']),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    provider['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(provider['specialty']),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4.0),
                      Text(provider['rating'].toString()),
                      const SizedBox(width: 8.0),
                      Text('(${provider['reviews']} reviews)'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
