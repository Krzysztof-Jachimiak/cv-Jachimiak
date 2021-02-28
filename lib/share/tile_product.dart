import 'package:animation_routes_riverpod_divizion/model/products_model.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileProduct extends StatelessWidget {
  final Product product;
  const TileProduct(this.product);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardColor,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.white,
              ),
              child: Image.network(
                product.imageLink,
                fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              product.name,
              style: styleprose,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
              decoration: BoxDecoration(
                  color: Colors.green[600],
                  borderRadius: BorderRadius.circular(32)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(product.rating.toString(), style: styleHeadBlack),
                  Icon(
                    Icons.star,
                    size: 16,
                    color: AppColors.cardColor,
                  )
                ],
              ),
            ),
            Text('\$${product.price}', style: styleHeadWhite),
          ],
        ),
      ),
    );
  }
}
