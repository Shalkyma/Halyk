class UserProfile {
  final String iin;
  final String firstName;
  final String lastName;

  UserProfile({required this.iin, required this.firstName, required this.lastName});

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      iin: json['iin'],
      firstName: json['first_name'],
      lastName: json['last_name'],
    );
  }
}