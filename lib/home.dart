import 'package:flutter/material.dart';
import 'data_buku.dart';
import 'detail.dart';
import 'login.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Buku',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: listBuku.length,
          itemBuilder: (context, index) {
            final DataBuku title = listBuku[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return detail(title: listBuku[index]);
                }));
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.network(listBuku[index].imageLink),
                      ),
                      SizedBox(height: 10),
                      Text(listBuku[index].title),
                      Text(listBuku[index].author),
                      Text(listBuku[index].pages.toString()),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
