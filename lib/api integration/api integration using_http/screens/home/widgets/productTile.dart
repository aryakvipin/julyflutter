// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
//
// import '../../../model/productModel.dart';
//
// class ProductTile extends StatelessWidget {
//   final News product;
//   ProductTile(this.product);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           Container(
//             height: 150,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(5))),
//             child: CachedNetworkImage(
//               imageUrl: product.image!,
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Text(
//             product.author!,
//             style: const TextStyle(fontSize: 20,
//                 fontWeight: FontWeight.bold),
//             maxLines: 2,
//           ),
//           Text(
//             '${product.price!}\$',
//             style: const TextStyle(fontSize: 15),
//           )
//         ],
//       ),
//     );
//   }
// }
