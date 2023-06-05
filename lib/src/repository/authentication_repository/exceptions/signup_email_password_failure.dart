class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = "An unknown error occured,"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure(
            'Enter a stronger password');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure('Email is not valid');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure(
            'An acount already exists for that email');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
            'Operation is not allowed. Please contact support');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure('User is disabled');

      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
