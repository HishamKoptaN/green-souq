import 'package:flutter/material.dart';

class JobsView extends StatelessWidget {
  static const String routeName = 'jobs';

  const JobsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobs'),
      ),
      body: const Center(
        child: Text('Jobs Feature'),
      ),
    );
  }
}
