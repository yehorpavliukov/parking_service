import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Floor extends StatelessWidget {
  final int totalSlots;
  final int totalFreeSlots;
  final int smallSlotsNumber;
  final int freeSmallSlotsNumber;
  final int mediumSlotsNumber;
  final int freeMediumSlotsNumber;
  final int largeSlotsNumber;
  final int freeLargeSlotsNumber;
  final int xLargeSlotsNumber;
  final int freeXLargeSlotsNumber;
  final String name;

  const Floor({
    required this.totalSlots,
    required this.totalFreeSlots,
    required this.smallSlotsNumber,
    required this.freeSmallSlotsNumber,
    required this.mediumSlotsNumber,
    required this.freeMediumSlotsNumber,
    required this.largeSlotsNumber,
    required this.freeLargeSlotsNumber,
    required this.xLargeSlotsNumber,
    required this.freeXLargeSlotsNumber,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration:
            const BoxDecoration(border: Border.fromBorderSide(BorderSide(color: Colors.black))),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(name),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Total: $totalSlots'),
                Text('Free: $totalFreeSlots'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: SlotTypeContainer(
                    slotType: 'small',
                    freeSlotsCount: freeSmallSlotsNumber,
                    totalSlotCount: smallSlotsNumber,
                  ),
                ),
                Expanded(
                  child: SlotTypeContainer(
                    slotType: 'medium',
                    freeSlotsCount: freeMediumSlotsNumber,
                    totalSlotCount: mediumSlotsNumber,
                  ),
                ),
                Expanded(
                  child: SlotTypeContainer(
                    slotType: 'large',
                    freeSlotsCount: freeLargeSlotsNumber,
                    totalSlotCount: largeSlotsNumber,
                  ),
                ),
                Expanded(
                  child: SlotTypeContainer(
                    slotType: 'xLarge',
                    freeSlotsCount: freeXLargeSlotsNumber,
                    totalSlotCount: xLargeSlotsNumber,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
