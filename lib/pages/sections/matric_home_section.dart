part of '../home.dart';

class _MatricHomeSection extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.secondary),
      ),
      child: Column(
        spacing: 4,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 8,
            children: [
              Row(
                spacing: 16,
                children: [
                  Expanded(child: _buildLabel('Total Penjualan')),
                  RegularText.semiBold('Semua waktu', size: 12),
                ],
              ),
              HeadingText(text: 'Rp 5.000.000.000'),
            ],
          ),
          Divider(),
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    _buildLabel('Transaksi'),
                    SubtitleText(text: '300.000'),
                  ],
                ),
              ),
              SizedBox(height: 42, child: VerticalDivider()),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    _buildLabel('Produk'),
                    SubtitleText(text: '654'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  RegularText _buildLabel(String text) => RegularText(text: text, size: 12);
}
