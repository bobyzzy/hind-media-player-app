// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserGetMeEntity extends Equatable {
  final String phoneNumber;
  final String gender;
  final String? avatar;
  UserGetMeEntity({
    required this.phoneNumber,
    required this.gender,
    required this.avatar,
  });

  @override
  List<Object> get props => [phoneNumber, gender, avatar ?? 'null'];

  @override
  bool get stringify => true;
}
