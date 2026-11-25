import 'package:kasirku/models/product_model.dart';
import 'package:material_ui/material_ui.dart';
import 'package:intl/intl.dart';
import 'package:kasirku/colors.dart';
import 'package:kasirku/components/components.dart';
import 'package:kasirku/pages/checkout.dart';
import 'package:kasirku/pages/product.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CashierPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CashierPage> createState() => _CashierPageState();
}

class _CashierPageState extends State<CashierPage> {
  final searchController = TextEditingController();

  final List<ProductModel> products = [
    ProductModel(
      id: 'PRD-001',
      image: 'https://ui-avatars.com/api/?name=Buah+Anggur&background=random',
      name: 'Buah Anggur',
      price: 5000,
      unit: 'Ons',
    ),
    ProductModel(
      id: 'PRD-002',
      image: 'https://ui-avatars.com/api/?name=Buah+Rambutan&background=random',
      name: 'Buah Rambutan',
      price: 15000,
      unit: 'Kg',
    ),
    ProductModel(
      id: 'PRD-003',
      image: 'https://ui-avatars.com/api/?name=Buah+Mangga&background=random',
      name: 'Buah Mangga',
      price: 25000,
      unit: 'Kg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kasir'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ProductPage()),
                );
              },
              icon: Icon(LucideIcons.package),
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
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 3 / 4,
              ),
              itemBuilder: (context, index) {
                return CardProduct(data: products[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CheckoutPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                spacing: 16,
                children: [
                  Icon(LucideIcons.shoppingCart, color: AppColors.white),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegularText.semiBold('3 Item', color: AppColors.white),
                        RegularText.semiBold(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp ',
                          ).format(500000),
                          color: AppColors.white,
                        ),
                      ],
                    ),
                  ),
                  Icon(LucideIcons.chevronRight, color: AppColors.white),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
