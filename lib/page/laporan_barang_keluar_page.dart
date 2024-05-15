import 'package:flutter/material.dart';

class LaporanBarangKeluarPage extends StatelessWidget {
  const LaporanBarangKeluarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Buat Laporan Barang Keluar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Filter Barang'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk filter barang
              },
              child: const Text('Filter'),
            ),
            const SizedBox(height: 20),
            // Tambahkan tampilan daftar barang keluar di sini
          ],
        ),
      ),
    );
  }
}
