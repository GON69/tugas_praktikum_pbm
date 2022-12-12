import 'package:flutter/material.dart';
import 'shoplist.dart';

class ShoplistDetail extends StatefulWidget {
  const ShoplistDetail({super.key,required this.shoplist});

  final ShopList shoplist;

  @override
  State<ShoplistDetail> createState() => _ShoplistDetailState();
}

class _ShoplistDetailState extends State<ShoplistDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text('List',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Text(widget.shoplist.barang,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 20,
            ),
            const Text('Comment',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Text(widget.shoplist.komen,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
            const SizedBox(
              height: 20,
            ),
            const Text('Budget',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Text(widget.shoplist.budget,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}