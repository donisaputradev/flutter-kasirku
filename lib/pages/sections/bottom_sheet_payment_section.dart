part of '../checkout.dart';

class _BottomSheetPaymentSection extends StatefulWidget {
  const new();

  @override
  State<_BottomSheetPaymentSection> createState() =>
      _BottomSheetPaymentSectionState();
}

class _BottomSheetPaymentSectionState
    extends State<_BottomSheetPaymentSection> {
  final amountController = TextEditingController();

  @override
  void dispose() {
    amountController.dispose();
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
              SubtitleText(text: 'Total Bayar'),
              RegularFormInput(
                controller: amountController,
                hintText: '100.000',
                icon: Icon(LucideIcons.wallet),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Lanjutkan')),
            ],
          ),
        ),
      ),
    );
  }
}
