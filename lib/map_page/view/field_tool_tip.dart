import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../fields_state_holder.dart';

class FieldToolTip extends ConsumerWidget {
  final int indexOfField;
  const FieldToolTip({super.key, required this.indexOfField});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cell = ref.watch(fieldsStateHolder)[indexOfField];
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      width: 300,
      height: 180,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Ячейка ${cell.id}'),
          const SizedBox(
            height: 17,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 6,
              itemBuilder: (context, index) {
                return [
                  Row(
                    children: [
                      const Text('Сорт винограда: '),
                      const Spacer(),
                      Text(cell.grapeKind),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Фенофаза: '),
                      const Spacer(),
                      Text(cell.phenophase),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Влажность почвы:'),
                      Spacer(),
                      Text('10%'),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Температура:'),
                      Spacer(),
                      Text('26'),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Освещённость:'),
                      Spacer(),
                      Text('25'),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Проблемы:'),
                      Spacer(),
                      Text(
                        'Нет проблем',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Последняя работа:'),
                      Spacer(),
                      Text('Просев'),
                    ],
                  ),
                ][index];
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 5);
              },
            ),
          )
        ],
      ),
    );
  }
}
