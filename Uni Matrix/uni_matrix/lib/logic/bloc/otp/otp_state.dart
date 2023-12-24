part of 'otp_bloc.dart';

sealed class OtpState extends Equatable {
  const OtpState();

  @override
  List<Object> get props => [];
}

final class OtpInitial extends OtpState {}

final class OtpVerificationLoading extends OtpState {}

final class OtpVerificationError extends OtpState {}

final class OtpVerificationLoaded extends OtpState {}
