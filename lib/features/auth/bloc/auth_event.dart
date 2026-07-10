abstract class AuthEvent {}

class GetStartedPressed extends AuthEvent {}

class SignInNavigationClicked extends AuthEvent {}

class LoginPressed extends AuthEvent {
  final String email;
  final String password;
  LoginPressed({required this.email, required this.password});
}

class SignUpPressed extends AuthEvent {
  final String name;
  final String email;
  final String password;
  SignUpPressed({required this.name, required this.email, required this.password});
}

class GoogleSignInPressed extends AuthEvent {}

class NavigateToSignUpClicked extends AuthEvent {}

class NavigateToLoginClicked extends AuthEvent {}
