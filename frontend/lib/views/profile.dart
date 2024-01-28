import 'package:flutter/material.dart';
import 'package:frontend/models/userProfile.dart';

class UserProfileWidget extends StatelessWidget {
  final UserProfile userProfile;

  const UserProfileWidget({super.key, required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(userProfile.firstName),
        Text(userProfile.lastName),
      ],
    );
  }
}