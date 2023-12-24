part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LogionLoading extends LoginState {}

final class LogionError extends LoginState {}

final class LogionSuccess extends LoginState {}
