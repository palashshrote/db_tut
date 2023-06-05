class LoginWithEmailAndPasswordFailure {
  final String message;

  const LoginWithEmailAndPasswordFailure(
      [this.message = "An unknown error occured"]);

  factory LoginWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'invalid-email':
        return const LoginWithEmailAndPasswordFailure('Email is not valid');
      case 'invalid-password':
        return const LoginWithEmailAndPasswordFailure('Password is not valid');
      default:
        return const LoginWithEmailAndPasswordFailure();
    }
  }
}
