import 'package:flutter/material.dart';
import 'package:kasirku/colors.dart';
import 'package:kasirku/components/components.dart';

class CardProduct extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.secondary),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 12,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.secondary.withValues(alpha: .3),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://picsum.org/id/1001023513/800/600.jpg',
                ),
              ),
            ),
          ),
          RegularText(text: 'Organic Potato Organic Potato Organic Potato'),
          SubtitleText(text: '21.000 / kg'),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              fixedSize: Size(double.infinity, 28),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text('Tambah', style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
