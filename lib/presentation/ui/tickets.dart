import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_service_manager/presentation/bloc/parking_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Tickets')),
        body: BlocBuilder<ParkingBloc, ParkingState>(
          builder: (context, state) => state.map(
            isBusy: (_) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            data: (data) {
              final slots = data.model.floors
                  .expand((element) => element.slots)
                  .where((element) => element.isBusy)
                  .toList();

              return ListView.builder(
                itemCount: slots.length,
                itemBuilder: (context, index) {
                  final slot = slots[index];
                  final floor = data.model.floors.firstWhere(
                    (element) => element.slots.any((element) => element.id == slot.id),
                  );
                  final ticketCode = '${floor.id}-${slot.id}';

                  return Ticket(
                    type: slot.type.name,
                    title: ticketCode,
                    onTap: () =>
                        context.read<ParkingBloc>().add(ParkingEvent.releaseSlot(ticketCode)),
                  );
                },
              );
            },
            error: (_) => const Center(
              child: Text('Something went wrong'),
            ),
          ),
        ),
      ),
    );
  }
}
