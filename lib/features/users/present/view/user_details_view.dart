import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green/core/theme/extensions/theme_ext.dart';
import 'package:green/features/users/domain/entities/user_entity.dart';
import 'package:green/features/users/present/view/widgets/details/user_details_body.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../bloc/users_bloc.dart';

class UserDetailsView extends StatefulWidget {
  const UserDetailsView({super.key, required this.user});

  final UserEntity user;
  static const String routeName = 'user-details';

  @override
  State<UserDetailsView> createState() => _UserDetailsViewState();
}

class _UserDetailsViewState extends State<UserDetailsView> {
  final TextEditingController _notesController = TextEditingController(
    text: 'المستخدم متعاون ويهتم بجودة المنتجات الزراعية.',
  );

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  void _appendNote(String noteText) {
    {
      setState(() {
        if (_notesController.text.trim().isNotEmpty) {
          _notesController.text += '\n$noteText';
        } else {
          _notesController.text = noteText;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    {
      return CustomScaffold(
        appBar: AppBar(
          title: const Text('تفاصيل المستخدم'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
            tooltip: 'رجوع',
          ),
        ),
        body: BlocBuilder<UsersBloc, UsersState>(
          bloc: getIt<UsersBloc>(),
          builder: (context, state) {
            return state.maybeMap(
              loaded: (st) {
                return UserDetailsBody(
                  user: widget.user,
                  onAppendNote: _appendNote,
                  onSubmit: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Row(
                          spacing: 8.w,
                          children: [
                            Icon(
                              Icons.task_alt,
                              color: context.colorScheme.inversePrimary,
                              size: 20.r,
                            ),
                            const Text(
                              'تم حفظ وتحديث تقييم المستخدم بنجاح في شبكة المندوبين',
                            ),
                          ],
                        ),
                        backgroundColor: context.colorScheme.inverseSurface,
                        behavior: .floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: .circular(12.r),
                        ),
                      ),
                    );
                  },
                );
              },
              orElse: () {
                return const SizedBox();
              },
            );
          },
        ),
      );
    }
  }
}
