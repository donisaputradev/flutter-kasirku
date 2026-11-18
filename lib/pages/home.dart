import 'package:material_ui/material_ui.dart';
import 'package:kasirku/colors.dart';
import 'package:kasirku/components/components.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

part 'sections/matric_home_section.dart';
part 'sections/today_home_section.dart';
part 'sections/quick_home_section.dart';
part 'sections/order_home_section.dart';
part 'sections/stock_home_section.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 12,
          children: [
            CircleAvatar(
              foregroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            RegularText.semiBold('Hi, Doni!'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(onPressed: () {}, icon: Icon(LucideIcons.bell)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            _MatricHomeSection(),
            _QuickHomeSection(),
            RegularText.semiBold('OPERASIONAL TOKO'),
            _TodayHomeSection(),
            _StockHomeSection(),
            _OrderHomeSection(),
          ],
        ),
      ),
    );
  }
}
