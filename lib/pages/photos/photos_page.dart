import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../routes/routes.dart';

class PhotosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('menus_photos'.tr()),
      ),
      body: Container(
        child: GridView.custom(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            repeatPattern: QuiltedGridRepeatPattern.same,
            pattern: [
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(2, 2),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(2, 3),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(Routes.photosPreview, arguments: index);
                  },
                  child: Image.asset(
                    'assets/images/photo_${index + 1}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ),
    );
  }
}
