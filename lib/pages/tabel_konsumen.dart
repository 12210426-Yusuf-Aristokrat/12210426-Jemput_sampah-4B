import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabel Konsumen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Data konsumen
  final List<Map<String, dynamic>> konsumen = [
    {
      'Email': 'yusuf1@example.com',
      'Nama Lengkap': 'Yusuf Aristokrat',
      'Nomor HP': '081234----',
      'Alamat': 'Jln.Tanjung Raya 2',
      'Kota': 'Pontianak',
      'Jenis Pengguna': 'Reguler',
    },
    {
      'Email': 'Ryan2@example.com',
      'Nama Lengkap': 'Muhammad Ryandra',
      'Nomor HP': '08987654321',
      'Alamat': 'Sungai Jawi Gg.Sebukit',
      'Kota': 'Pontianak',
      'Jenis Pengguna': 'Premium',
    },
    {
      'Email': 'Amad3@example.com',
      'Nama Lengkap': 'Rizky Ramadhan',
      'Nomor HP': '08234567890',
      'Alamat': 'Jln Tanjung Raya 2',
      'Kota': 'Pontianak',
      'Jenis Pengguna': 'Reguler',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabel Konsumen'),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(
              label: Text('Email'),
            ),
            DataColumn(
              label: Text('Nama Lengkap'),
            ),
            DataColumn(
              label: Text('Nomor HP'),
            ),
            DataColumn(
              label: Text('Alamat'),
            ),
            DataColumn(
              label: Text('Kota'),
            ),
            DataColumn(
              label: Text('Jenis Pengguna'),
            ),
          ],
          rows: konsumen
              .map(
                (data) => DataRow(
                  cells: <DataCell>[
                    DataCell(Text(data['Email'])),
                    DataCell(Text(data['Nama Lengkap'])),
                    DataCell(Text(data['Nomor HP'])),
                    DataCell(Text(data['Alamat'])),
                    DataCell(Text(data['Kota'])),
                    DataCell(Text(data['Jenis Pengguna'])),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
