import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListTile(
        title: Container(
          width: double.infinity,
          height: 16.0,
          color: Colors.white,
        ),
        subtitle: Container(
          margin: const EdgeInsets.only(top: 8.0),
          width: double.infinity,
          height: 48.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
