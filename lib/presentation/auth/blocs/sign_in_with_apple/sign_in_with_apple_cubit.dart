import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/presentation/auth/blocs/sign_in_with_apple/sign_in_with_apple_state.dart';

import '../../../../domain/auth/usecase/signin_with_apple_usecase.dart';

@injectable
class SignInWithAppleCubit extends Cubit<SignInWithAppleState> {
  final SignInWithAppleUsecase signInWithAppleUsecase;

  SignInWithAppleCubit({required this.signInWithAppleUsecase})
      : super(const SignInWithAppleState());

  Future<void> signInWithApple() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final signInResult = await signInWithAppleUsecase.call(null);
    signInResult.fold(
      (failure) {
        emit(state.copyWith(
            isLoading: false,
            errorMessage: failure.message ?? 'Sign in with Apple failed'));
      },
      (userCredential) {
        emit(state.copyWith(
          isLoading: false,
        ));
      },
    );
  }
}
