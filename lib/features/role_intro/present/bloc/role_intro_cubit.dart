import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../domain/entities/role_intro_slide.dart';
import '../../domain/usecases/get_role_intro_usecase.dart';

part 'role_intro_state.dart';

/// يدير حالة الشاشة التعريفية؛ لا يُكمل إلا بعد تفاعل فعلي مع المحتوى.
class RoleIntroCubit extends Cubit<RoleIntroState> {
  RoleIntroCubit(GetRoleIntroUseCase useCase, UserType type)
      : super(RoleIntroState(slide: useCase(type)));

  void viewed() {
    if (!state.hasChanges) {
      emit(state.copyWith(hasChanges: true));
    }
  }

  bool get canContinue => state.hasChanges;
}
