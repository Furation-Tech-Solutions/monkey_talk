// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/auth/usecase/forgot_password_usecase.dart';
import 'forgot_password_state.dart';

@injectable
class ForgotpasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordUsecase forgotPasswordUsecase;

  ForgotpasswordCubit({required this.forgotPasswordUsecase})
      : super(const ForgotPasswordState());

  void emailchange(String email) {
    emit(state.copyWith(email: email));
  }

  Future<void> forgotpassword() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final forgotpasswordResult = await forgotPasswordUsecase.call(
      ForgotPasswordParams(
        email: state.email,
      ),
    );
    forgotpasswordResult.fold(
      (failure) {
        emit(state.copyWith(
            isLoading: false,
            errorMessage:
                failure.message ?? 'Error occured, try again with email'));
      },
      (sucess) {
        emit(state.copyWith(
          isLoading: false,
          isSucess: true,
        ));
      },
    );
    emit(state.copyWith(isSucess: false, errorMessage: ''));
  }
}
