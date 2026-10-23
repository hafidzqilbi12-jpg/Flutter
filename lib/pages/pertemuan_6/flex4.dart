import 'package:flutter/material.dart';

final List<Map<String, dynamic>> pegawai = [
  {"nama": "Lamine Yamal", "kelas": "ASE-25002", "Warna": Colors.blue},
  {"nama": "John Doe", "kelas": "ASE-25003", "Warna": Colors.green},
  {"nama": "Jane Smith", "kelas": "ASE-25004", "Warna": Colors.red},
];

class Flex4 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pegawai.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 100,
              decoration: BoxDecoration(
                color: pegawai[index]['Warna'],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                spacing: 10,
                children: [
                  CircleAvatar(child: Icon(Icons.person)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama Lengkap : ${pegawai[index]['nama']}"),
                      Text("Kelas : ${pegawai[index]['kelas']}"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
