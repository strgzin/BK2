import 'package:flutter/material.dart';

class JadwalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal'),
        centerTitle: true,
        leading: Container(),
         backgroundColor: Color(0xFF4D668B),
      ),
      backgroundColor: Color(0xFF4D668B),
      body: Center(
        child: Text('Halaman Jadwal'),
      ),

      // Bagian Tombol Navigasi
      bottomNavigationBar: Container(
        color: Color(0xFFD9D9D9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home, color: Color(0xFF282828)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.calendar_today, color: Color(0xFF282828)),
                onPressed: () {},
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
