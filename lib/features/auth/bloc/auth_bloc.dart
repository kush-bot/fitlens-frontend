import 'package:fitlens/features/auth/bloc/auth_event.dart';
import 'package:fitlens/features/auth/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState>{
  AuthBloc():super(AuthInital()){
    on<GetStartedPressed>((event,emit){
      emit(NavigateToOnBoarding());
    });


    on<SignInNavigationClicked>((event,emit){
    emit(NavigateToLogin());
    });
}

}