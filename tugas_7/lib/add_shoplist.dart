import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:tugas_7/shoplist.dart';

import 'db_provider.dart';

class AddUpdatePage extends StatefulWidget {
  final ShopList? shoplist;

  const AddUpdatePage({Key? key, this.shoplist}) : super(key: key);

  @override
  State<AddUpdatePage> createState() => _NoteAddUpdatePageState();
}

class _NoteAddUpdatePageState extends State<AddUpdatePage> {
  final TextEditingController _barangController = TextEditingController();
  final TextEditingController _komenController = TextEditingController();
  final TextEditingController _tglController = TextEditingController();
  final TextEditingController _budgetController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: _barangController,
              decoration: const InputDecoration(
                labelText: 'masukkan nama barang',
              ),
            ),
            TextField(
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
                      barang: _barangController.text,
                      komen: _komenController.text,
                      tgl: _tglController.text,
                      budget: _budgetController.text,
                      );
                  Provider.of<DbProvider>(context, listen: false)
                      .addShop(shoplist);
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _barangController.dispose();
    _komenController.dispose();
    _tglController.dispose();
    _budgetController.dispose();
    super.dispose();
  }
}
