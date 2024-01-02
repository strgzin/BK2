import 'package:flutter/material.dart';
import 'editprofil.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        leading: Container(),
         backgroundColor: Color(0xFF4D668B),
      ),
      backgroundColor: Color(0xFF4D668B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Profil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_image.jpg'),
              backgroundColor: Color(0xFFD9D9D9),
            ),
            SizedBox(height: 16),
            // Informasi Profil
            Text(
              'Nama Pengguna',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Nomor HP: 08123456789',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            // Tombol Edit Profil
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman edit profil ketika tombol "Edit Profil" ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFD9D9D9),// Warna latar belakang tombol
                // Atau gunakan properti lain seperti padding, shape, dsb.
              ),
              child: Text(
                'Edit Profil',
              style: TextStyle(
                color: Color(0xFF282828), // Ubah warna teks
                // Atau sesuaikan properti teks lainnya seperti fontSize, fontWeight, dsb.
              ),),
            ),
            SizedBox(height: 8),
            // Tombol Logout
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFD9D9D9),// Warna latar belakang tombol
                // Atau gunakan properti lain seperti padding, shape, dsb.
              ),
              child: Text(
                'Logout',
              style: TextStyle(
                color: Color(0xFF282828), // Ubah warna teks
                  // Atau sesuaikan properti teks lainnya seperti fontSize, fontWeight, dsb.
                ),
              ),
              
            ),
          ],
        ),
      ),

      // Bagian Tombol Navigasi
      bottomNavigationBar: Container(
        color: Color(0xFFD9D9D9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Color(0xFF282828)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            IconButton(
              icon: Icon(Icons.calendar_today, color: Color(0xFF282828)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/jadwal');
              },
            ),
            IconButton(
              icon: Icon(Icons.add, color: Color(0xFF282828)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/buatjadwal');
              },
            ),
            IconButton(
              icon: Icon(Icons.chat, color: Color(0xFF282828)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/chat');
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Color(0xFF282828)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
