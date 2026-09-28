import 'package:flutter/material.dart';

class ScheduledPostShimmerCard extends StatelessWidget {
  const ScheduledPostShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      // child: Shimmer.fromColors(
      //   baseColor: Colors.grey[300]!,
      //   highlightColor: Colors.grey[100]!,
      //   child: Container(
      //     width: double.infinity,
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(8),
      //       border: Border.all(
      //         color: Colors.grey[400]!,
      //         width: 1,
      //       ),
      //     ),
      //     child: Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Expanded(
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 Row(
      //                   children: [
      //                     Container(
      //                       width: 24,
      //                       height: 24,
      //                       decoration: BoxDecoration(
      //                         color: Colors.grey[300]!,
      //                         shape: BoxShape.circle,
      //                       ),
      //                     ),
      //                     const SizedBox(width: 8),
      //                     Container(
      //                       height: 14,
      //                       width: 180,
      //                       color: Colors.grey[300],
      //                     ),
      //                   ],
      //                 ),
      //                 const SizedBox(height: 8),
      //                 Container(
      //                   height: 16,
      //                   width: double.infinity,
      //                   color: Colors.grey[300],
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             width: 24,
      //             height: 24,
      //             color: Colors.grey[300],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
