import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class UserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginEvent extends UserEvent {
  final String email;
  final String password;

  LoginEvent(this.email, this.password);
}

// States
abstract class UserState extends Equatable {
  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoggedIn extends UserState {
  final String userId;

  UserLoggedIn(this.userId);
}

// BLoC
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is LoginEvent) {
      yield UserLoading();
      // Simulate a network call
      await Future.delayed(Duration(seconds: 2));
      yield UserLoggedIn('mock_user_id');
    }
  }
}
