import 'package:flutter/material.dart';

class SlotTypeContainer extends StatelessWidget {
  final String slotType;
  final int freeSlotsCount;
  final int totalSlotCount;

  const SlotTypeContainer({
    required this.slotType,
    required this.freeSlotsCount,
    required this.totalSlotCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          slotType,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text('Total: $totalSlotCount'),
        const SizedBox(
          height: 5,
        ),
        Text('Free: $freeSlotsCount'),
      ],
    );
  }
}
