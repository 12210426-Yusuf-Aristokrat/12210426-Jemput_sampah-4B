import 'package:flutter/material.dart';

class CekGoogle extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  void cekGoogleSignIn(BuildContext context) {
    String alamatEmail = emailController.text;
    // Menggunakan logika untuk memeriksa apakah alamat email terdaftar di Google
    bool belumTerdaftar = !daftarEmailGoogle.contains(alamatEmail);
    if (belumTerdaftar) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RegistrationPage(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Alamat email sudah terdaftar di Google')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Alamat Email'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => cekGoogleSignIn(context),
              child: Text('Masuk'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
      ),
      body: Center(
        child: Text('Halaman Pendaftaran'),
      ),
    );
  }
}

List<String> daftarEmailGoogle = [
  'email1@gmail.com',
  'email2@gmail.com',
  'email3@gmail.com',
  // Tambahkan email yang terdaftar di Google ke dalam daftar
];

void main() {
  runApp(MaterialApp(
    home: CekGoogle(),
  ));
}
