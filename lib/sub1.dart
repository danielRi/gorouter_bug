import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Sub1 extends StatelessWidget {
  const Sub1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.red),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: const Text('sub 1 sub'),
            onPressed: () {
              context.goNamed('sub1sub');
            },
          ),
        ],
      ),
    );
  }
}
