
import 'package:flutter/material.dart';
import 'package:petshop/petshop_detail.dart';

import 'petshop_model.dart';

class petshop extends StatelessWidget {
  const petshop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Moza Petshop',
          style: TextStyle(
            color: Color.fromARGB(251, 255, 255, 255),
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 25, 117, 228),
      ),
      backgroundColor: const Color.fromARGB(255, 195, 195, 195),
      body: ListView.builder(
        itemCount: ListPshop.length,
        itemBuilder: (BuildContext context, int index) {
          final item = ListPshop[index];
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Card(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          item.image,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          item.title,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(item.description),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item.rating.toString(),
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 247, 0),
                              size: 40,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Detail(list: item),
                                  ));
                            },
                            child: const Text('detail')),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
