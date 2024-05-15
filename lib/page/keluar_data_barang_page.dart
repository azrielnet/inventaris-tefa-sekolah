import 'package:flutter/material.dart';

class KeluarDataBarangPage extends StatelessWidget {
  const KeluarDataBarangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keluar Data Barang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Cari Barang'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk pencarian barang
              },
              child: const Text('Cari'),
            ),
            const SizedBox(height: 20),
            // Tambahkan tampilan daftar barang di sini
          ],
        ),
      ),
    );
  }
}
