import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/auth/usecase/signinwithgoogle.dart';
import 'sign_in_with_google_state.dart';

@injectable
class SignInWithGoogleCubit extends Cubit<SignInWithGoogleState> {
  final SignInWithGoogleUsecase signInWithGoogleUsecase;

  SignInWithGoogleCubit({required this.signInWithGoogleUsecase})
      : super(const SignInWithGoogleState());

  Future<void> signInWithGoogle() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final signInResult = await signInWithGoogleUsecase.call(null);
    signInResult.fold(
      (failure) {
        emit(state.copyWith(
            isLoading: false,
            errorMessage: failure.message ?? 'Sign in with Google failed'));
      },
      (userCredential) {
        emit(state.copyWith(
          isLoading: false,
        ));
      },
    );
  }
}
