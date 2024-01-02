import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
         backgroundColor: Color(0xFF4D668B),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Form for editing profile
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Nama Pengguna',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Nomor HP',
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Handle save button logic here
                String newUsername = _usernameController.text;
                String newPhoneNumber = _phoneNumberController.text;

                // You can add logic here to update the profile data
                // For example, save it to a database or update the state

                // After saving, you can navigate back to the profile screen
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF4D668B),// Warna latar belakang tombol
                // Atau gunakan properti lain seperti padding, shape, dsb.
              ),
              child: Text('Simpan Perubahan'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }
}
