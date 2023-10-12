import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: const Text('sub 1'),
            onPressed: () {
              context.goNamed('sub1');
            },
          ),
          TextButton(
            child: const Text('sub 2'),
            onPressed: () {
              context.goNamed('sub2');
            },
          ),
        ],
      ),
    );
  }
}
