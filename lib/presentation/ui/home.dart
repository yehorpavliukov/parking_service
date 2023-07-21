import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:parking_service_manager/app/index.dart';
import 'package:parking_service_manager/presentation/bloc/parking_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Parking')),
        body: Stack(
          children: <Widget>[
            BlocBuilder<ParkingBloc, ParkingState>(
              builder: (context, state) => state.map(
                isBusy: (_) => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                data: (data) {
                  return ListView.builder(
                    itemCount: data.model.floors.length,
                    itemBuilder: (context, index) {
                      final floor = data.model.floors[index];

                      return Floor(
                        totalSlots: floor.totalSlots,
                        totalFreeSlots: floor.totalFreeSlots,
                        smallSlotsNumber: floor.smallSlotsNumber,
                        freeSmallSlotsNumber: floor.freeSmallSlotsNumber,
                        mediumSlotsNumber: floor.mediumSlotsNumber,
                        freeMediumSlotsNumber: floor.freeMediumSlotsNumber,
                        largeSlotsNumber: floor.largeSlotsNumber,
                        freeLargeSlotsNumber: floor.freeLargeSlotsNumber,
                        xLargeSlotsNumber: floor.xLargeSlotsNumber,
                        freeXLargeSlotsNumber: floor.freeXLargeSlotsNumber,
                        name: floor.name,
                      );
                    },
                  );
                },
                error: (_) => const Center(
                  child: Text('Something went wrong'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Wrap(
                children: [
                  ActionButton(
                    title: 'Go to tickets',
                    onTap: () => get<AppRouter>().navigate(const TicketsRoute()),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ActionButton(
                    title: 'Small',
                    onTap: () => context
                        .read<ParkingBloc>()
                        .add(const ParkingEvent.tookFreeSlot(SlotType.small)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ActionButton(
                    title: 'medium',
                    onTap: () => context
                        .read<ParkingBloc>()
                        .add(const ParkingEvent.tookFreeSlot(SlotType.medium)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ActionButton(
                    title: 'large',
                    onTap: () => context
                        .read<ParkingBloc>()
                        .add(const ParkingEvent.tookFreeSlot(SlotType.large)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ActionButton(
                    title: 'xlarge',
                    onTap: () => context
                        .read<ParkingBloc>()
                        .add(const ParkingEvent.tookFreeSlot(SlotType.xLarge)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
