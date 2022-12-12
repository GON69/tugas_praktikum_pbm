import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:tugas_7/shoplistdetail.dart';
import 'package:tugas_7/update_list.dart';

import 'add_list.dart';
import 'db_provider.dart';

class UIkomen extends StatefulWidget {
  const UIkomen({Key? key}) : super(key: key);

  @override
  State<UIkomen> createState() => _UIkomenState();
}

class _UIkomenState extends State<UIkomen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Shopping List', style: TextStyle(color: Colors.white)),
      ),
      body: Consumer<DbProvider>(
        builder: (context, provider, child) {
          final shoplists = provider.shoplists;

          return ListView.builder(
            itemCount: shoplists.length,
            itemBuilder: (context, index) {
              final shoplist = shoplists[index];
              return Dismissible(
                key: Key(shoplist.id.toString()),
                background: Container(color: Colors.lime),
                onDismissed: (direction) {
                   Provider.of<DbProvider>(context, listen: false)
                                .deleteShop(shoplist.id!);
                },
                child: InkWell(
                  onTap: () async {
                    Provider.of<DbProvider>(context, listen: false);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ShoplistDetail(shoplist: shoplist),
                        ));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('#3742fa'),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                ' Date: ${shoplist.tgl}'),
                            Text(
                                style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                ' Budget: ${shoplist.budget}'),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 300,
                              height: 200,
                              padding: const EdgeInsets.symmetric(horizontal: 100),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                                border: Border.all(width: 0.5),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(shoplist.barang,style: const TextStyle(color: Colors.white),),
                              )),
                          Positioned(
                            top: 20,
                            left: 10,
                            child: Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(bottom: 10),
                              child: const Text(
                                'List :',
                                style: TextStyle(fontSize: 14,color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 300,
                              height: 200,
                              padding: const EdgeInsets.symmetric(horizontal: 100),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                                border: Border.all(width: 0.5),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(shoplist.komen,style: const TextStyle(color: Colors.white)),
                              )),
                          Positioned(
                            top: 20,
                            left: 10,
                            child: Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(bottom: 10),
                              child: const Text(
                                'Comment :',
                                style: TextStyle(fontSize: 14,color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () async {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return UpdateShop(shoplist: shoplist);
                                }));
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(Icons.edit, color: Colors.white),
                              ),
                            ),
                            InkWell(
                              onTap: () async{
                                 Provider.of<DbProvider>(context, listen: false)
                                .deleteShop(shoplist.id!);
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0),
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.delete_forever,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddUpdatePage()));
        },
      ),
    );
  }
}
