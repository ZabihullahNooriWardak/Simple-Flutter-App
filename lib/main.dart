import 'package:flutter/material.dart';

void main() {
  runApp(
    const ShowMyCard(),
  );
}

class ShowMyCard extends StatelessWidget {
  const ShowMyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Card',
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text(
            'My Card',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.blue.shade900,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/m.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Zabihullah Noori',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSans3',
                  letterSpacing: 2.5,
                ),
              ),
              const SizedBox(height: 30),
              _buildCard(
                Icons.call,
                '+93 777 777 777',
              ),
              const SizedBox(height: 10),
              _buildCard(
                Icons.email,
                'Zabi@gmail.com',
              ),
              const SizedBox(height: 10),
              _buildCard(
                Icons.location_on,
                'Kabul, Afghanistan',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(IconData icon, String text) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.blue.shade900,
            ),
            const SizedBox(width: 30),
            Text(text),
          ],
        ),
      ),
    );
  }
}
