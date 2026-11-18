import 'package:material_ui/material_ui.dart';
import 'package:kasirku/colors.dart';
import 'package:kasirku/components/components.dart';
import 'package:kasirku/extentions/string_extention.dart';

class HistoryPage extends StatefulWidget {
  const new({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  String tabActive = 'semua';

  final List<String> tabs = [
    'semua',
    'menunggu',
    'diproses',
    'selesai',
    'dibatalkan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Riwayat')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 12,
              children: tabs.map((item) {
                final isActive = tabActive == item;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      tabActive = item;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isActive
                            ? AppColors.primary
                            : AppColors.secondary,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: isActive ? AppColors.primary : null,
                    ),
                    child: RegularText.semiBold(
                      item.capitalize,
                      size: 12,
                      color: isActive ? AppColors.white : null,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 2,
                          children: [
                            SubtitleText(text: '#ORD-024'),
                            RegularText(text: 'Tunai · 21-05-26 09.50'),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        spacing: 4,
                        children: [
                          _buildStatus(color: AppColors.success),
                          SubtitleText(text: 'Rp 85.000'),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: 7,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatus({required Color color}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: RegularText.semiBold('Selesai', size: 12, color: color),
    );
  }
}
