
import 'package:flutter/material.dart';

class CustomPaginationWidget extends StatefulWidget {
  final List<Widget> slivers;
  final Function() bottomReachedCallback;
  const CustomPaginationWidget({
    super.key,
    required this.slivers,
    required this.bottomReachedCallback,
  });

  @override
  State<CustomPaginationWidget> createState() {
    return _CustomPaginationWidgetState();
  }
}

class _CustomPaginationWidgetState extends State<CustomPaginationWidget> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      widget.bottomReachedCallback();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: widget.slivers,
    );
  }
}
