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
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
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
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(product.rating.toString(), style: styleheading),
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Text('\$${product.price}', style: styleHeadBlack),
          ],
        ),
      ),
    );
  }
}
