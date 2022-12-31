import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:tugas_7/db_helper.dart';
import 'package:tugas_7/shoplist.dart';

import 'add_edit_page.dart';

class ShoplistDetail extends StatefulWidget {
  final ShopList shoplist;

  const ShoplistDetail({super.key, required this.shoplist});

  @override
  State<ShoplistDetail> createState() => _ShoplistDetailState();
}

class _ShoplistDetailState extends State<ShoplistDetail> {
  get shoplist => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () async {
                await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AddUpdatePage(shoplist: shoplist),
                ));
              },
              icon: Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete))
        ]),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 8),
          children: [
            Text(
              widget.shoplist.barang,
              style: TextStyle(color: Colors.white38),
            ),
            SizedBox(height: 8),
            Text(
              widget.shoplist.komen,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              widget.shoplist.tgl,
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              widget.shoplist.budget,
              style: TextStyle(color: Colors.white70, fontSize: 18),
            )
          ],
        ));
  }
}
