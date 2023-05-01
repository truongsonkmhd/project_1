import 'package:food_app/blocs3/counter_bloc.dart';
import 'package:food_app/blocs3/counter_event.dart';
import 'package:food_app/blocs3/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs3/counter_bloc.dart';
import '../blocs3/counter_event.dart';
import '../blocs3/counter_provider.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = const TextStyle(fontSize: 30);
  final int _maxCount = 30; // gtri tối đa của số lượng
  @override
  Widget build(BuildContext context) {
    return CounterProvider(child: Scaffold(
      body: SafeArea(child: BlocBuilder<CounterBloc, int>(builder: ((context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $state',
              style: _textStyle,

            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _customButton(() => _increase(context), 'Increase(+)'),
                _customButton(() => _decrease(context), 'Decrease(-)')
              ],
            )
          ],
        );
      })),
      ),

    ));
  }

  _increase(BuildContext context) {
    final currentCount = context.read<CounterBloc>().state;
    if (currentCount < _maxCount) { // Kiểm tra giới hạn số lượng trước khi tăng
      context.read<CounterBloc>().add(IncreaseEvent());
    }
  }

  _decrease(BuildContext context) {
    final currentCount = context.read<CounterBloc>().state;
    if (currentCount > 0) { // Kiểm tra giới hạn số lượng trước khi giảm
      context.read<CounterBloc>().add(DecreaseEvent());
    }
  }
  // _increase(BuildContext context) {
  //   context.read<CounterBloc>().add(IncreaseEvent());
  // }
  //
  // _decrease(BuildContext context) {
  //   context.read<CounterBloc>().add(DecreaseEvent());
  // }

  Widget _customButton(Function() onPressed, String text) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}
