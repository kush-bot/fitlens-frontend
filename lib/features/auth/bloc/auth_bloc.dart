import 'package:fitlens/features/auth/bloc/auth_event.dart';
import 'package:fitlens/features/auth/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<GetStartedPressed>((event, emit) {
      emit(NavigateToOnBoarding());
    });

    on<SignInNavigationClicked>((event, emit) {
      emit(NavigateToLogin());
    });

    on<NavigateToSignUpClicked>((event, emit) {
      emit(NavigateToSignUp());
    });

    on<NavigateToLoginClicked>((event, emit) {
      emit(NavigateToLogin());
    });

    on<LoginPressed>((event, emit) async {
      emit(AuthLoading());
      // TODO: Implement backend login
      await Future.delayed(const Duration(seconds: 1));
      emit(AuthSuccess());
    });

    on<SignUpPressed>((event, emit) async {
      emit(AuthLoading());
      // TODO: Implement backend signup
      await Future.delayed(const Duration(seconds: 1));
      emit(AuthSuccess());
    });

    on<GoogleSignInPressed>((event, emit) async {
      emit(AuthLoading());
      // TODO: Implement Google Sign-In
      await Future.delayed(const Duration(seconds: 1));
      emit(AuthSuccess());
    });
  }
}
