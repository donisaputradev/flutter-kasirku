part of '../home.dart';

class _QuickHomeSection extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) {
    final white = AppColors.white;
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primary,
              border: Border.all(color: AppColors.primary),
            ),
            child: Row(
              spacing: 8,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(LucideIcons.wallet, color: AppColors.primary),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RegularText.semiBold('Kasir Baru', color: white),
                      RegularText(
                        text: 'Buat penjualan',
                        size: 12,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.secondary),
            ),
            child: Row(
              spacing: 8,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.success,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(LucideIcons.receiptText, color: white),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RegularText.semiBold('Pesanan'),
                      RegularText(text: 'Kelola order', size: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
