import 'package:flutter/material.dart';
import 'package:kasirku/colors.dart';

class CheckoutPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Pesanan')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) {
                return Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Tampilkan Dialog'),
        ),
      ),
    );
  }
}
