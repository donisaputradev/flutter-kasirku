part of '../checkout.dart';

class _BottomSheetDiscountSection extends StatefulWidget {
  const new();

  @override
  State<_BottomSheetDiscountSection> createState() =>
      _BottomSheetDiscountSectionState();
}

class _BottomSheetDiscountSectionState
    extends State<_BottomSheetDiscountSection> {
  final discountController = TextEditingController();

  @override
  void dispose() {
    discountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: Container(
        padding: EdgeInsets.all(24),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16,
            children: [
              SubtitleText(text: 'Tentukan Nilai Diskon'),
              RegularFormInput(
                controller: discountController,
                hintText: '15',
                icon: Icon(LucideIcons.badgePercent),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Terapkan')),
            ],
          ),
        ),
      ),
    );
  }
}
