import 'package:equatable/equatable.dart';

/// This [Failure] class is created to reduce propagation
/// of errors such as SocketException to propagate to
/// the UI Layer. This class will hold the exceptions thrown
/// from the [Data Layer].
abstract class Failure extends Equatable {
  /// Optional failure message.
  final String? message;

  /// Failure constructor.
  const Failure([this.message]);

  @override
  List<Object?> get props => [message];
}

/// [InternalServerFailure] is returned when API Endpoint
/// returns a 500 Internal Server Error status code.
class InternalServerFailure extends Failure {
  const InternalServerFailure([String? message]) : super(message);
}

/// [NotFoundFailure] is returned when API Endpoint
/// returns a 404 Not Found status code.
class NotFoundFailure extends Failure {
  const NotFoundFailure([String? message]) : super(message);
}

/// [ServerUnavailableFailure] is returned when API Endpoint
/// returns a 503 Server unavailable status code.
class ServerUnavailableFailure extends Failure {
  const ServerUnavailableFailure([String? message]) : super(message);
}

/// [CacheFailure] is returned when there's
/// no Cache Found in the device.
class CacheFailure extends Failure {
  const CacheFailure([String? message]) : super(message);
}

/// [ConflictFailure] is returned when API Endpoint
/// returns a 409 Conflict Status Code.
class ConflictFailure extends Failure {
  const ConflictFailure([String? message]) : super(message);
}

/// [NoInternetConnectionFailure] is returned when there's
/// no active internet connection.
class NoInternetConnectionFailure extends Failure {
  const NoInternetConnectionFailure([String? message]) : super(message);
}

// Additional custom Failure classes to cover more DioExceptions
class NetworkTimeoutFailure extends Failure {
  const NetworkTimeoutFailure([String? message]) : super(message);
}

class BadCertificateFailure extends Failure {
  const BadCertificateFailure([String? message]) : super(message);
}

class RequestCancelledFailure extends Failure {
  const RequestCancelledFailure([String? message]) : super(message);
}

class NetworkConnectionFailure extends Failure {
  const NetworkConnectionFailure([String? message]) : super(message);
}

class UnknownFailure extends Failure {
  const UnknownFailure([String? message]) : super(message);
}

class BadRequestFailure extends Failure {
  const BadRequestFailure([String? message]) : super(message);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([String? message]) : super(message);
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure([String? message]) : super(message);
}

class UnprocessableEntityFailure extends Failure {
  const UnprocessableEntityFailure([String? message]) : super(message);
}

class TooManyRequestsFailure extends Failure {
  const TooManyRequestsFailure([String? message]) : super(message);
}

class NetworkRequestFailure extends Failure {
  const NetworkRequestFailure([String? message]) : super(message);
}

class EmailAlreadyExistsFailure extends Failure {
  const EmailAlreadyExistsFailure([String? message]) : super(message);
}

class InvalidEmailFailure extends Failure {
  const InvalidEmailFailure([String? message]) : super(message);
}

class WeakPasswordFailure extends Failure {
  const WeakPasswordFailure([String? message]) : super(message);
}

class LogInWithEmailAndPasswordInvalidEmailFailure extends Failure {}

class LogInWithEmailAndPasswordUserDisabledFailure extends Failure {}

class LogInWithEmailAndPasswordUserNotFoundFailure extends Failure {}

class LogInWithEmailAndPasswordWrongPasswordFailure extends Failure {}
