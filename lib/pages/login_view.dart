import 'package:flutter/material.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/home_view.dart';
import 'package:id_ac_bsi_4b_12210426_jemput_sampah/pages/register_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GO GREEN',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              child: const Text('Sign In'),
              onPressed: () {
                // Implementasi logika sign in di sini
                //pindah ke halaman utama
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },
            ),
            TextButton(
              child: const Text('Register'),
              onPressed: () {
                // Implementasi logika registrasi di sini
                // Pindah ke halaman registrasi
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegistrationPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
