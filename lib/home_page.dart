import 'package:flutter/material.dart';

import 'package:inventaris_tefa_sekolah/page/input_barang_masuk_page.dart';
import 'package:inventaris_tefa_sekolah/page/laporan_barang_masuk_page.dart';
import 'package:inventaris_tefa_sekolah/page/keluar_data_barang_page.dart';
import 'package:inventaris_tefa_sekolah/page/laporan_barang_keluar_page.dart';
import 'package:inventaris_tefa_sekolah/login_page.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: const Text('Inventaris Tefa Sekolah'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context); // Keluar dari halaman saat ini
              // Navigasi ke halaman login
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()), // Ganti LoginPage dengan nama halaman login Anda
              );
            }, 
          ),
        ],
      ),
      
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blue,
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.file_download, size: 70, color: Colors.green), // Menggunakan ikon data masuk
                    Text("Data Masuk", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.blue,
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.file_upload, size: 70, color: Colors.redAccent), // Menggunakan ikon data keluar
                    Text("Data Keluar", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),     
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 70,
              child: DrawerHeader(
                
                decoration: BoxDecoration(

                  color: Colors.blue,
                  
                ),
                
                child: Text('Menu'),
              ),
            ),
            ListTile(
              title: const Text('Input Barang Masuk'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InputBarangMasukPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Buat Laporan Barang Masuk'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  // ignore: prefer_const_constructors
                  MaterialPageRoute(builder: (context) => LaporanBarangMasukPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Keluar Data Barang'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KeluarDataBarangPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Buat Laporan Barang Keluar'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LaporanBarangKeluarPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
