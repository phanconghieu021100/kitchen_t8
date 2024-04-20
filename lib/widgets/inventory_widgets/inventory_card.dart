import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kitchenwise/constants.dart';
import 'package:kitchenwise/u.dart';
import 'package:kitchenwise/widgets/inventory_widgets/inventory_modal.dart';

class InventoryCard extends StatelessWidget {
  const InventoryCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.image = const Image(
      image: AssetImage(
          'images/ki.png'),fit: BoxFit.fitHeight, // TODO: Replace with image loading animations
    ),
  });

  final String title;
  final String subtitle;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        tileColor: Theme.of(context).colorScheme.tertiary,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(AppConstants.imageRadius),
          child: Container(
            height: AppConstants.imageSize,
            width: AppConstants.imageSize,
            color: Colors.blueGrey,
            child: image,
          ),
        ),
        title: Text(title,style:  AppFonts.quicksand(size: 18,weight: FontWeight.w700),),
        subtitle: Text(subtitle,style:  AppFonts.quicksand(size: 16,weight: FontWeight.w500)),
        trailing: IconButton(
          onPressed: () {
            showModalBottomSheet(
              // TODO: Populate modal with pre-existing item values
              context: context,
              builder: (context) => const InventoryAddItemModal(
                title: 'Edit Item',
                
                isEditItem: true,
              ),
              constraints: BoxConstraints(
                  maxHeight:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? AppConstants.modalHeightPortrait
                          : AppConstants.modalHeightLandscape),
            );
          },
          icon: SvgPicture.asset('images/icons8-edit.svg',height: 25,)
          // const Icon(
          //   Icons.edit,
          //   size: AppConstants.appIconSize,
          // ),
        ),
      ),
    );
  }
}
