// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class OtpConfirmResponseEntity extends Equatable {
  final bool hasAccount;
  final String accessToken;
  final String refreshToken;
  OtpConfirmResponseEntity({
    required this.hasAccount,
    required this.accessToken,
    required this.refreshToken,
  });

  @override
  List<Object> get props => [hasAccount, accessToken, refreshToken];
}
