import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/presentation/auth/blocs/register/register_state.dart';

import '../../../../core/utils.dart/validationModels/email_model.dart';
import '../../../../core/utils.dart/validationModels/password.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState());
  // RegisterCubit(this._authenticationRepository) : super(const RegisterState());

  // final AuthenticationRepository _authenticationRepository;

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.password]),
      ),
    );
  }

  void firstNameChanged(String value) {
    emit(
      state.copyWith(
        firstName: value,
      ),
    );
  }

  void lastNameChanged(String value) {
    emit(
      state.copyWith(
        lastName: value,
      ),
    );
  }

  void genderChanged(String value) {
    emit(
      state.copyWith(
        gender: value,
      ),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([state.email, password]),
      ),
    );
  }

  Future<void> logInWithCredentials() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      // await _authenticationRepository.logInWithEmailAndPassword(
      //   email: state.email.value,
      //   password: state.password.value,
      // );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    }
    // on LogInWithEmailAndPasswordFailure catch (e) {
    //   emit(
    //     state.copyWith(
    //       errorMessage: e.message,
    //       status: FormzSubmissionStatus.failure,
    //     ),
    //   );
    // }
    catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }

  Future<void> logInWithGoogle() async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      // await _authenticationRepository.logInWithGoogle();
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    }
    // on LogInWithGoogleFailure catch (e) {
    //   emit(
    //     state.copyWith(
    //       errorMessage: e.message,
    //       status: FormzSubmissionStatus.failure,
    //     ),
    //   );
    // }
    catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
