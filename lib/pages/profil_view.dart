import 'package:flutter/material.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/edit_profil_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Nama Pengguna',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Email: pengguna@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Alamat: Jl. Contoh Alamat No. 123',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
               Image.asset(
                        "assets/user.png",
                        width: 100,
                        height: 100,
                      ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika untuk tombol Edit Profil
                //menuju halaman edit profil
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  UserDataWidget()));
              },
              child: const Text('Edit Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
