import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: true,
        leading: Container(),
         backgroundColor: Color(0xFF4D668B),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // ini pas tombol search diklik
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFF4D668B),
      body: Column(
        children: [
          // Ini kolom search
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari pengguna...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          // Daftar Pengguna
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFFD9D9D9),
                    foregroundColor: Color(0xFF4D668B),
                    child: Text((index + 1).toString()),
                  ),
                  title: Text('User ${index + 1}'),
                  subtitle: Text('Pesan terakhir dari user ${index + 1}'),
                  onTap: () {
                    // ini pas usernya diklik
                  },
                );
              },
            ),
          ),
        ],
      ),

      // Bagian Tombol Navigasi
      bottomNavigationBar: Container(
        color:  Color(0xFFD9D9D9),
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
                onPressed: () {},
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
