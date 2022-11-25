import 'package:flutter/material.dart';
import 'package:tugas/main.dart';
import 'package:tugas/model/models.dart' as models;
import 'package:tugas/file/form.dart';
import 'package:tugas/file/mywatchlist.dart';

class MyDataBudget extends StatefulWidget {
  const MyDataBudget({super.key});

  final String title = "Data Budget";

  @override
  State<MyDataBudget> createState() => _MyDataBudgetState();
}

class _MyDataBudgetState extends State<MyDataBudget> {
  final dataWidget = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyDataBudget()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watch List'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyWatchListView()),
                  );
                },
              ),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: models.elem.length,
            itemBuilder: (context, index) {
              final instance = models.elem[index];
              return ListTile(
                title: Text(instance.judul),
                subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(instance.nominal.toString()),
                      Text(instance.jenis)
                    ]),
              );
            }));
  }
}
