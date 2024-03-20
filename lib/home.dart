import 'package:flutter/material.dart';
import 'data_buku.dart';
import 'detail.dart';

class halamanhome extends StatefulWidget {
  halamanhome({super.key});

  @override
  State<halamanhome> createState() => _HalamanpageState();
}
class _HalamanpageState extends State<halamanhome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Buku',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}