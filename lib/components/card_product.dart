import 'package:kasirku/extentions/currency_extension.dart';
import 'package:kasirku/models/product_model.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:kasirku/colors.dart';
import 'package:kasirku/components/components.dart';
import 'package:kasirku/pages/manage.dart';

class CardProduct extends StatefulWidget {
  const new({super.key, this.isProductPage = false, required this.data});

  final bool isProductPage;
  final ProductModel data;

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  int qty = 0;

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
                child: Image.network(widget.data.image, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(height: 4),
          RegularText(
            text: widget.data.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 2),
          SubtitleText(
            text: '${widget.data.price.currency} / ${widget.data.unit}',
          ),
          SizedBox(height: 8),
          widget.isProductPage
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
              : qty > 0
              ? Container(
                  height: 32,
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withValues(alpha: .3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(32, 36),
                          padding: EdgeInsets.all(6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            qty = qty - 1;
                          });
                        },
                        child: Icon(LucideIcons.minus),
                      ),
                      Expanded(
                        child: Text('$qty', textAlign: TextAlign.center),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(32, 36),
                          padding: EdgeInsets.all(6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            qty = qty + 1;
                          });
                        },
                        child: Icon(LucideIcons.plus),
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  height: 32,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        qty = qty + 1;
                      });
                    },
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
