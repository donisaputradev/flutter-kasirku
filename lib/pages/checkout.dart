import 'package:flutter/material.dart';
import 'package:kasirku/colors.dart';
import 'package:kasirku/components/components.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

part 'sections/item_checkout_section.dart';
part 'sections/bottom_sheet_discount_section.dart';
part 'sections/bottom_sheet_payment_section.dart';

class CheckoutPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Pesanan')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 12,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 12,
              children: [
                SubtitleText(text: 'Pesanan'),
                InkWell(
                  child: SubtitleText(
                    text: '+ Diskon',
                    color: AppColors.primary,
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return _BottomSheetDiscountSection();
                      },
                    );
                  },
                ),
              ],
            ),
            Divider(),
            _ItemCheckoutSection(),
            Divider(),
            SubtitleText(text: 'Detail Transaksi'),
            Divider(),
            Column(
              spacing: 8,
              children: [
                _buildTile(title: 'Jumlah pesanan', value: '1'),
                _buildTile(title: 'Subtotal', value: 'Rp 54.000'),
                _buildTile(title: 'Pajak', value: 'Rp 0'),
                _buildTile(title: 'Diskon', value: 'Rp 0'),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 12,
              children: [
                RegularText.semiBold('Estimasi Tagihan'),
                RegularText.semiBold('Rp 54.000'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            spacing: 12,
            children: [
              Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Batalkan'),
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Draft'),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return _BottomSheetPaymentSection();
                    },
                  );
                },
                child: Text('Lanjutkan'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile({required String title, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 12,
      children: [
        RegularText(text: title),
        RegularText.semiBold(value),
      ],
    );
  }
}
