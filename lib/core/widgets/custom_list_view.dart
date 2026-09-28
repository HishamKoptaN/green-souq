import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

class CustomListView<T> extends StatefulWidget {
  final List<T>? items;
  final Widget Function(T post) builder;
  final Widget shimmerItem;
  final bool hasMorePages;

  const CustomListView({
    super.key,
    this.items,
    required this.builder,
    required this.shimmerItem,
    required this.hasMorePages,
  });

  @override
  State<CustomListView<T>> createState() => _CustomListViewState<T>();
}

class _CustomListViewState<T> extends State<CustomListView<T>> {
  @override
  Widget build(BuildContext context) {
    final int itemCount =
        (widget.items?.length ?? 0) + (widget.hasMorePages ? 1 : 0);
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (context, i) {
        final itemsLength = widget.items?.length ?? 0;
        if (i < itemsLength) {
          return widget.builder(widget.items![i]);
        } else {
          return widget.hasMorePages
              ? widget.shimmerItem
              : Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "لا يوجد بيانات أخرى",
                      style: TextStyles.bold16.copyWith(color: Colors.black),
                    ),
                  ),
                );
        }
      },
    );
  }
}
