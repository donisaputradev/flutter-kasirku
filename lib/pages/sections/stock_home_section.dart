part of '../home.dart';

class _StockHomeSection extends StatelessWidget {
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
              Expanded(child: SubtitleText(text: 'Kesehatan stok')),
              RegularText(text: 'Kelola produk', color: AppColors.primary),
            ],
          ),
          RegularText(text: 'Pantau ketersediaan dari 654 produk', size: 12),
          Row(
            spacing: 12,
            children: [
              _buildCard(value: '6 stok menipis', color: AppColors.warning),
              _buildCard(value: '2 stok habis', color: AppColors.danger),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard({required String value, required Color color}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withValues(alpha: .1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: RegularText.semiBold(value, color: color),
      ),
    );
  }
}
