import 'package:flutter/material.dart';

/// Tombol-tombol counter.
/// Aksi tombol diterima dari parent berupa callback function.
class CounterButtons extends StatelessWidget {
  final VoidCallback onAdd;
  final VoidCallback onSubtract;
  final VoidCallback onReset;

  const CounterButtons({
    super.key,
    required this.onAdd,
    required this.onSubtract,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: onSubtract, child: const Text('- Kurang')),
        const SizedBox(width: 12),
        ElevatedButton(onPressed: onReset, child: const Text('Reset')),
        const SizedBox(width: 12),
        ElevatedButton(onPressed: onAdd, child: const Text('+ Tambah')),
      ],
    );
  }
}