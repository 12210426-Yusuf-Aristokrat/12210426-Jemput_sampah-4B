import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ListData(), // Tambahkan implementasi fungsi pembuat objek
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Konfigurasi aplikasi Anda
    );
  }
}

class ListData with ChangeNotifier {
  // Implementasi kelas ListData Anda
}
