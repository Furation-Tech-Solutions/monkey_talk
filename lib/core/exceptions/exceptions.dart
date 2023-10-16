/// [NotFoundException] is thrown when API Endpoint
/// returns a 500 Internal Server Error Status Code
class InternalServerException implements Exception {}

/// [NotFoundException] is thrown when API Endpoint
/// returns a 404 Not Found Status Code
class NotFoundException implements Exception {}

/// [ServerUnavailableException] is thrown when API Endpoint
/// returns a 503 Server Unavailable Status Code
class ServerUnavailableException implements Exception {}

/// [ConflictException] is thrown when API Endpoint
/// returns a 409 Conflict Status Code
class ConflictException implements Exception {}

/// [CacheException] is thrown when there's
/// no Cache Found in the device
class CacheException implements Exception {}

/// [NoInternetConnectionException] is thrown when there's
/// no active internet connection
class NoInternetConnectionException implements Exception {}

/// Auth Exceptions

/// {@template sign_up_with_email_and_password_Exception}
/// Thrown during the sign up process if a Exception occurs.
/// {@endtemplate}
class SignUpWithEmailAndPasswordException implements Exception {
  /// {@macro sign_up_with_email_and_password_Exception}
  const SignUpWithEmailAndPasswordException([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/createUserWithEmailAndPassword.html
  factory SignUpWithEmailAndPasswordException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordException(
          'This user has been disabled. Please contact support for help.',
        );
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordException(
          'An account already exists for that email.',
        );
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordException(
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return const SignUpWithEmailAndPasswordException(
          'Please enter a stronger password.',
        );
      default:
        return const SignUpWithEmailAndPasswordException();
    }
  }

  /// The associated error message.
  final String message;
}

class LogInWithEmailAndPasswordInvalidEmailException implements Exception {}

class LogInWithEmailAndPasswordUserDisabledException implements Exception {}

class LogInWithEmailAndPasswordUserNotFoundException implements Exception {}

class LogInWithEmailAndPasswordWrongPasswordException implements Exception {}

/// {@template log_in_with_email_and_password_Exception}
/// Thrown during the login process if a Exception occurs.
/// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithEmailAndPassword.html
/// {@endtemplate}
class LogInWithEmailAndPasswordException implements Exception {
  /// {@macro log_in_with_email_and_password_Exception}
  const LogInWithEmailAndPasswordException([
    this.message = 'An unknown exception occurred.',
    this.code = 'An unknown error code',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  factory LogInWithEmailAndPasswordException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return LogInWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
          code,
        );
      case 'user-disabled':
        return LogInWithEmailAndPasswordException(
          'This user has been disabled. Please contact support for help.',
          code,
        );
      case 'user-not-found':
        return LogInWithEmailAndPasswordException(
          'Email is not found, please create an account.',
          code,
        );
      case 'wrong-password':
        return LogInWithEmailAndPasswordException(
          'Incorrect password, please try again.',
          code,
        );
      default:
        return const LogInWithEmailAndPasswordException();
    }
  }

  /// The associated error message.
  final String message;

  /// The Error Code
  final String code;
}

/// {@template log_in_with_google_Exception}
/// Thrown during the sign in with google process if a Exception occurs.
/// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithCredential.html
/// {@endtemplate}
class LogInWithGoogleException implements Exception {
  /// {@macro log_in_with_google_Exception}
  const LogInWithGoogleException([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  factory LogInWithGoogleException.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return const LogInWithGoogleException(
          'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return const LogInWithGoogleException(
          'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return const LogInWithGoogleException(
          'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return const LogInWithGoogleException(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LogInWithGoogleException(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LogInWithGoogleException(
          'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return const LogInWithGoogleException(
          'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return const LogInWithGoogleException(
          'The credential verification ID received is invalid.',
        );
      default:
        return const LogInWithGoogleException();
    }
  }

  /// The associated error message.
  final String message;
}

/// Thrown during the logout process if a Exception occurs.
class LogOutException implements Exception {}
