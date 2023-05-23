import 'package:flutter/material.dart';
import 'home.dart'; 

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigasi"),
      ),
      body: Column(
        children: [
          const Text("Halaman Pertama"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const Home()));
            },
            child: const Text("Pindah Halaman 2")),
          ],
        ),
      );
    }
  }