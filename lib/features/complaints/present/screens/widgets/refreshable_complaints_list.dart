import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/complaint_entity.dart';
import '../../bloc/complaints_bloc.dart';
import 'complaints_list_widget.dart';

class RefreshableComplaintsList extends StatelessWidget {
  const RefreshableComplaintsList({super.key, required this.complaints});

  final List<ComplaintEntity> complaints;

  Future<void> _refresh(BuildContext context) async {
    final bloc = BlocProvider.of<ComplaintsBloc>(context);
    final refreshed = bloc.stream.firstWhere((state) {
      return state.maybeWhen(
        loaded: (_) {
          return true;
        },
        failure: (_) {
          return true;
        },
        orElse: () {
          return false;
        },
      );
    });
    bloc.add(const ComplaintsEvent.started());
    await refreshed;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return _refresh(context);
      },
      child: ComplaintsListWidget(complaints: complaints),
    );
  }
}
