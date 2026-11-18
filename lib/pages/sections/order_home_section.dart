part of '../home.dart';

class _OrderHomeSection extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.secondary),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8,
        children: [
          Row(
            spacing: 4,
            children: [
              Expanded(child: SubtitleText(text: 'Transaksi terakhir')),
              RegularText(text: 'Lihat semua', color: AppColors.primary),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 4,
            children: [_buildItem(), Divider(), _buildItem()],
          ),
        ],
      ),
    );
  }

  Widget _buildItem() {
    return Row(
      spacing: 8,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 2,
            children: [
              RegularText.semiBold('#ORD-024'),
              RegularText(text: 'Tunai · 09.50 · Selesai'),
            ],
          ),
        ),
        SubtitleText(text: 'Rp 85.000'),
      ],
    );
  }
}
