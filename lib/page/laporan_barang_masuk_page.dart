import 'package:flutter/material.dart';

class LaporanBarangMasukPage extends StatelessWidget {
  const LaporanBarangMasukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buat Laporan Barang Masuk'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Pilih Tanggal',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk memilih tanggal
              },
              child: const Text('Pilih Tanggal'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk membuat laporan berdasarkan tanggal yang dipilih
              },
              child: const Text('Buat Laporan'),
            ),
          ],
        ),
      ),
    );
  }
}
