import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';

import 'failures.dart';

// Failure mapDioExceptionToFailure(DioException dioException) {
//   switch (dioException.type) {
//     case DioExceptionType.connectionTimeout:
//       return NetworkTimeoutFailure(dioException.message);
//     case DioExceptionType.sendTimeout:
//       return NetworkTimeoutFailure(dioException.message);
//     case DioExceptionType.receiveTimeout:
//       return NetworkTimeoutFailure(dioException.message);
//     case DioExceptionType.badCertificate:
//       return BadCertificateFailure(dioException.message);
//     case DioExceptionType.badResponse:
//       return BadRequestFailure(dioException.message);
//     case DioExceptionType.cancel:
//       return RequestCancelledFailure(dioException.message);
//     case DioExceptionType.connectionError:
//       return NetworkConnectionFailure(dioException.message);
//     default:
//       return UnknownFailure(dioException.message);
//   }
// }

Failure mapStatusCodeToFailure(int? statusCode) {
  switch (statusCode) {
    case HttpStatus.internalServerError:
      return const InternalServerFailure();
    case HttpStatus.notFound:
      return const NotFoundFailure();
    case HttpStatus.serviceUnavailable:
      return const ServerUnavailableFailure();
    case HttpStatus.conflict:
      return const ConflictFailure();
    case HttpStatus.unauthorized:
      return const UnauthorizedFailure();
    case HttpStatus.forbidden:
      return const ForbiddenFailure();
    case HttpStatus.badRequest:
      return const BadRequestFailure();
    case HttpStatus.unprocessableEntity:
      return const UnprocessableEntityFailure();
    case HttpStatus.tooManyRequests:
      return const TooManyRequestsFailure();
    default:
      return UnknownFailure('Unexpected status code: $statusCode');
  }
}

Failure mapFirebaseAuthExceptionToFailure(FirebaseAuthException e) {
  switch (e.code) {
    case 'user-not-found':
      return NotFoundFailure(e.message);
    case 'wrong-password':
      return UnauthorizedFailure(e.message);
    case 'network-request-failed':
      return NetworkRequestFailure(e.message);
    case 'email-already-in-use':
      return EmailAlreadyExistsFailure(e.message);
    case 'invalid-email':
      return InvalidEmailFailure(e.message);
    case 'weak-password':
      return WeakPasswordFailure(e.message);
    // Add more cases for other Firebase Auth exceptions if needed.
    default:
      return UnknownFailure(e.message);
  }
}
