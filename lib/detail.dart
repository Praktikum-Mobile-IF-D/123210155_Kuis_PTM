import 'package:flutter/material.dart';
import 'data_buku.dart';
import 'home.dart';

class detail extends StatefulWidget {
  final DataBuku title;
  const detail({super.key, required this.title});

  @override
  State<detail> createState() => _DetailpageState();
}

class _DetailpageState extends State<detail> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    final buku = widget.title;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          buku. title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width*0.3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index){
                  return Image.network(buku.imageLink[index]);
                }),
          ),
          Text(buku.title),
        ],
      ),
    );
  }
}