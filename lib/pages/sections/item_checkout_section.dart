part of '../checkout.dart';

class _ItemCheckoutSection extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(
          spacing: 12,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.secondary.withValues(alpha: .3),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://ui-avatars.com/api/?name=Honey+Original&background=random',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [
                  RegularText.semiBold('Honey Original'),
                  RegularText(text: '54.000 / pcs'),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(LucideIcons.squareMinus, color: AppColors.danger),
            ),
            RegularText.semiBold('1'),
            InkWell(
              onTap: () {},
              child: Icon(LucideIcons.squarePlus, color: AppColors.primary),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 12);
      },
      itemCount: 2,
    );
  }
}
