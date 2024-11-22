import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is LoginEvent) {
        emit(LoginLoading());
        try {
          UserCredential user = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: event.email, password: event.password);

          emit(LoginSuccess());
        } on FirebaseAuthException catch (ex) {
          if (ex.code == 'invalid-credential') {
            emit(LoginFailure(
                errMessage:
                    'The provided user informations are invalid. Please check and try again'));
          }
        } catch (e) {
          emit(LoginFailure(errMessage: 'Something went worng'));
        }
      }
    });
  }
}
