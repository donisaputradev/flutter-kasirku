import 'package:material_ui/material_ui.dart';
import 'package:kasirku/colors.dart';
import 'package:kasirku/components/components.dart';
import 'package:kasirku/pages/manage.dart';

class CardProduct extends StatelessWidget {
  const new({super.key, this.isProductPage = false});

  final bool isProductPage;

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
                  'https://ui-avatars.com/api/?name=Buah+Mangga&background=random',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          RegularText(
            text: 'Buah Mangga',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 2),
          SubtitleText(text: '21.000 / kg'),
          SizedBox(height: 8),
          isProductPage
              ? SizedBox(
                  height: 32,
                  child: Row(
                    spacing: 12,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                            backgroundColor: AppColors.danger,
                          ),
                          child: Text('Hapus', style: TextStyle(fontSize: 12)),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ManagePage(produk: 'Buah Mangga');
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                          ),
                          child: Text('Edit', style: TextStyle(fontSize: 12)),
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  height: 32,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    child: Text('Tambah', style: TextStyle(fontSize: 12)),
                  ),
                ),
        ],
      ),
    );
  }
}
