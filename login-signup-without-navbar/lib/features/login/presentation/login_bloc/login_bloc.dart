// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../auth/presentation/auth_bloc/auth_bloc.dart';
import '../../data/repositories/login_repositories_impl.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepositoriesImpl loginRepositoriesImpl;
  final AuthBloc authBloc;

  LoginBloc({
    required this.loginRepositoriesImpl,
    required this.authBloc,
  }) : super(LoginInitial()) {
    on<LoginInitialize>(_onLoginInitialize);
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  void _onLoginInitialize(
      LoginInitialize event, Emitter<LoginState> emit) async {
    emit(LoginInitial());
  }

  void _onLoginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    String? token = await loginRepositoriesImpl.loginUser(
      body: event.body,
    );

    if (token != null) {
      print(token);
      authBloc.add(
        LoggedIn(
          user: loginRepositoriesImpl.user!,
        ),
      );

      emit(LoginSuccessful());
    } else {
      emit(
        LoginFailure(
          message: loginRepositoriesImpl.errorMessage != null
              ? loginRepositoriesImpl.errorMessage!
              : 'Login unsuccessful',
        ),
      );
    }
  }
}
