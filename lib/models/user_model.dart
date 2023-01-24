import 'package:intl/intl.dart';


class UserModel {
  final String email;
  String uid, name, contactNo, department, joiningDate, profileImage, role;
  bool isActive;
  String currentDate = DateFormat("yyyy-MM-dd").format(DateTime.now());

  UserModel(
      {required this.uid,
      required this.email,
      required this.name,
      required this.contactNo,
      required this.department,
      required this.joiningDate,
      required this.profileImage,
      this.role = "user",
      this.isActive = true});

  Map<String, dynamic> toMap() {
    return {
      "email": email,
      "uid": uid,
      "name": name,
      "contactNo": contactNo,
      "department": department,
      "joiningDate": joiningDate,
      "profileImage": profileImage,
      "role": role,
      "isActive": isActive,
    };
  }
  int getYearsExperience() {
    DateTime start = DateFormat("yyyy-MM-dd").parse(joiningDate);
    DateTime current = DateFormat("yyyy-MM-dd").parse(currentDate);
    int difference = current.year - start.year;
    int monthDiff = current.month - start.month;
    if (monthDiff < 0 || (monthDiff == 0 && current.day < start.day)) {
      difference--;
    }
    return difference;
  }
}
