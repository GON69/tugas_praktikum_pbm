import 'package:flutter/material.dart';
import 'package:tugas_7/shoplist.dart';
import 'package:tugas_7/db_provider.dart';
import 'package:provider/provider.dart';

class UpdateShop extends StatefulWidget {
  final ShopList? shoplist;

  const UpdateShop({Key? key, this.shoplist}) : super(key: key);

  @override
  State<UpdateShop> createState() => _FormPageState();
}

class _FormPageState extends State<UpdateShop> {
  final TextEditingController _barangController = TextEditingController();
  final TextEditingController _komenController = TextEditingController();
  final TextEditingController _tglController = TextEditingController();
  final TextEditingController _budgetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(widget.shoplist!.id);
    _barangController.text = widget.shoplist!.barang;
    _komenController.text = widget.shoplist!.komen;
    _tglController.text = widget.shoplist!.tgl;
    _budgetController.text = widget.shoplist!.budget;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            TextFormField(
              maxLines: 5,
              controller: _barangController,
              decoration: const InputDecoration(
                labelText: 'masukkan nama barang',
              ),
            ),
            TextFormField(
              maxLines: 5,
              controller: _komenController,
              decoration: const InputDecoration(
                labelText: 'masukkan komentar',
              ),
            ),
            TextField(
              controller: _tglController,
              decoration: const InputDecoration(
                labelText: 'masukkan tanggal',
              ),
            ),
            TextField(
              controller: _budgetController,
              decoration: const InputDecoration(
                labelText: 'masukkan budget',
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('save'),
                onPressed: () async {
                  final shoplist = ShopList(
                      id: widget.shoplist!.id!,
                      barang: _barangController.text,
                      komen: _komenController.text,
                      tgl: _tglController.text,
                      budget: _budgetController.text);
                  Provider.of<DbProvider>(context, listen: false)
                      .updateShop(shoplist);
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
