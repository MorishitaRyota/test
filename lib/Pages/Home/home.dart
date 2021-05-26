import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
// ignore: deprecated_member_use
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

class Home extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final count = useProvider(counterProvider).state;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        child: Text(
            '$count') /*Consumer(builder: (context, watch, _) {
          final count = watch(counterProvider).state;
          return Text('$count');
        })*/
        ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(counterProvider).state++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
