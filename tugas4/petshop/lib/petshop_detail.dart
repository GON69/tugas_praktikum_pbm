
import 'package:flutter/material.dart';
import 'package:petshop/petshop_model.dart';

class Detail extends StatelessWidget {
  final Pshop list;
  const Detail({super.key, required this.list});

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Card(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    list.image,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          list.title,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              list.rating.toString(),
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
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          color: const Color.fromARGB(255, 25, 117, 228)),
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          list.description,
                          style: const TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
