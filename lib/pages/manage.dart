import 'package:flutter/material.dart';
import 'package:kasirku/components/regular_form_input.dart';

class ManagePage extends StatefulWidget {
  const new({super.key, this.produk});

  final String? produk;

  @override
  State<ManagePage> createState() => _ManagePageState();
}

class _ManagePageState extends State<ManagePage> {
  final nameController = TextEditingController();
  final descController = TextEditingController();
  final priceController = TextEditingController();
  final unitController = TextEditingController();
  final discountController = TextEditingController();
  final skuController = TextEditingController();
  final stockController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.produk != null) {
      setState(() {
        nameController.text = widget.produk ?? '';
      });
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    descController.dispose();
    priceController.dispose();
    unitController.dispose();
    discountController.dispose();
    skuController.dispose();
    stockController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.produk != null;
    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? 'Edit Produk' : 'Tambah Produk')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          spacing: 12,
          children: [
            RegularFormInput(
              label: 'Nama Produk',
              controller: nameController,
              hintText: 'Masukkan Nama Produk',
            ),
            RegularFormInput(
              label: 'Deskripsi',
              controller: descController,
              hintText: 'Masukkan Deskripsi Produk',
              minLines: 2,
              maxLines: 4,
              maxLength: 200,
            ),
            Row(
              spacing: 12,
              children: [
                Expanded(
                  child: RegularFormInput(
                    label: 'Harga Regular',
                    controller: priceController,
                    hintText: 'Rp 0',
                    keyboardType: TextInputType.number,
                  ),
                ),
                Expanded(
                  child: RegularFormInput(
                    label: 'Unit',
                    controller: unitController,
                    hintText: 'Pcs',
                  ),
                ),
              ],
            ),
            RegularFormInput(
              label: 'Harga Diskon',
              controller: discountController,
              hintText: 'Rp 0',
              keyboardType: TextInputType.number,
            ),
            RegularFormInput(
              label: 'SKU (Stock Keeping Unit)',
              controller: skuController,
              hintText: 'SKU (Stock Keeping Unit)',
            ),
            RegularFormInput(
              label: 'Total Stock',
              controller: stockController,
              hintText: '0',
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ElevatedButton(onPressed: () {}, child: Text('Simpan')),
        ),
      ),
    );
  }
}
