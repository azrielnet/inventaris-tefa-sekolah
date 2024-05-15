import 'package:flutter/material.dart';
import 'package:inventaris_tefa_sekolah/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'smkpgri13sby.jpg', // Ganti dengan path logo Anda
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Pindahkan ke halaman home ketika tombol ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: '',)),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
