import 'package:flutter/material.dart';
import 'package:tugas_7/shoplist.dart';
import 'package:tugas_7/ui_komen.dart';
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
      appBar: AppBar(
        title: Text("Edit List"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                size: 20,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _barangController,
                  decoration: InputDecoration(
                    label: const Text('masukkan nama barang baru'),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _komenController,
                  decoration: InputDecoration(
                    label: const Text('masukkan komen baru'),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _tglController,
                  decoration: InputDecoration(
                    label: const Text('masukkan tanggal baru'),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _budgetController,
                  minLines: 6,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    label: const Text('masukkan nominal budget baru'),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: FloatingActionButton.extended(
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
                      label: Text("Update List"),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ))
              ]),
        ),
      )),
    );
  }
}
