import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tugas_7/shoplistdetail.dart';
import 'package:tugas_7/shoplist.dart';

import 'add_edit_page.dart';
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
        title: const Text('Shopping List'),
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
                background: Container(color: Colors.red),
                onDismissed: (direction) {},
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
                    color: Colors.green,
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Text(shoplist.barang),
                      Text(shoplist.komen),
                      Text(shoplist.tgl),
                      Text(shoplist.budget)
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
