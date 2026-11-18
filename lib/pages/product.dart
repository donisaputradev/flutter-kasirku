import 'package:material_ui/material_ui.dart';
import 'package:kasirku/components/components.dart';
import 'package:kasirku/pages/manage.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ProductPage extends StatefulWidget {
  const new({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ManagePage()),
                );
              },
              icon: Icon(LucideIcons.plus),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: RegularFormInput(
              controller: searchController,
              hintText: 'Search by product name or SKU',
              icon: Icon(LucideIcons.search, size: 22),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 100),
              itemCount: 7,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 3 / 4,
              ),
              itemBuilder: (context, index) {
                return CardProduct(isProductPage: true);
              },
            ),
          ),
        ],
      ),
    );
  }
}
