import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/auth/usecase/signin_with_email_and_password_usecase.dart';
import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final SignInWithEmailAndPasswordUsecase signInWithEmailAndPasswordUsecase;
  
  LoginCubit({required this.signInWithEmailAndPasswordUsecase})
      : super(const LoginState());

  void emailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> login() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final signInResult = await signInWithEmailAndPasswordUsecase.call(
      SignInParams(email: state.email, password: state.password),
    );
    signInResult.fold(
      (failure) {
        emit(state.copyWith(
            isLoading: false,
            errorMessage: failure.message ?? 'Sign in failed'));
      },
      (userCredential) {
        emit(state.copyWith(
          isLoading: false,
        ));
      },
    );
  }

 
}
