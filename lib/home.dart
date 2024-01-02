import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        leading: Container(),
        backgroundColor: Color(0xFF4D668B),
      ),
      backgroundColor: Color(0xFF4D668B),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Bagian Foto Profil dan Selamat Datang
          Container(
            padding: EdgeInsets.all(16),
            color: Color(0xFF4D668B),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFFD9D9D9),
                  // Foto kosongin dulu
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Datang, User!',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Bagian Jadwal
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jadwal',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 120,
                        margin: EdgeInsets.only(right: 16),
                        color: Color(0xFFD9D9D9),
                        alignment: Alignment.center,
                        child: Text('Jadwal ${index + 1}'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Bagian Berita
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Berita',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 16),
                          padding: EdgeInsets.all(8),
                          color: Color(0xFFD9D9D9),
                          child: Text('Berita ${index + 1}'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // Bagian Tombol Navigasi
      bottomNavigationBar: Container(
        color: Color(0xFFD9D9D9), // Warna background
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home, color: Color(0xFF282828)),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.calendar_today, color: Color(0xFF282828)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/jadwal');
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.add, color: Color(0xFF282828)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/buatjadwal');
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.chat, color: Color(0xFF282828)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/chat');
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.person, color: Color(0xFF282828)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/profile');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}
