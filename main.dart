import 'package:flutter/material.dart';

void main() {
  runApp(Pertemuan1());
}

class Pertemuan1 extends StatelessWidget {
  Pertemuan1({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    List item = List.generate(100, (index) => 'Toko Sepatu ${index+1}');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5
            ), 
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
              ),
              child: Center(child: Text(item[index])),
            )
          ),
        ),
      ),
    );
  }
}

