import 'package:animation_routes_riverpod_divizion/controllers/product_controller.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:animation_routes_riverpod_divizion/share/tile_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductPage extends StatelessWidget {
  final _productController = ProductController.the;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text('Maybelline', style: styleHeadWhite),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.view_list_outlined,
                    color: AppColors.accentColor,
                  ),
                  onPressed: () {
                    _productController.oneAxisLine();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.grid_view, color: AppColors.accentColor),
                  onPressed: () {
                    _productController.twoAxisLine();
                    print(_productController.crossAxisCound1.value);
                  },
                )
              ],
            ),
            Obx(() {
              if (_productController.isLoading.isFalse) {
                return Expanded(
                  child: StaggeredGridView.countBuilder(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    crossAxisCount: _productController.crossAxisCound1.value,
                    itemCount: _productController.productList.length,
                    itemBuilder: (context, index) {
                      return TileProduct(_productController.productList[index]);
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            })
          ],
        ),
      ),
    );
  }
}
