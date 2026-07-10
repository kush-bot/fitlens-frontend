import 'package:fitlens/features/auth/bloc/auth_bloc.dart';
import 'package:fitlens/features/auth/bloc/auth_event.dart';
import 'package:fitlens/features/auth/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Welcomescreen extends StatelessWidget{
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<AuthBloc,AuthState>(
          listener: (context,state){
            if(state is NavigateToOnBoarding){
              print("Navigating");
            }else if(state is NavigateToLogin){
              print("Navigating to login scree");
            }
          },
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44.0,vertical: 16),
                child: Text("satya"),
            )
        ),
      ),

    );

  }
}