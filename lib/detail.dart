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
    final title = widget.title;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          title. title,
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
                itemCount: 1,
                itemBuilder: (context, index){
                  return Image.network(listBuku[index].imageLink);
                }),
          ),
          Text(title.title),
          Text(title.author),
          Text(title.country),
          Text(title.language),
        ],
      ),
    );
  }
}