// ignore_for_file: avoid_classes_with_only_static_members

class Regex {
  static bool isEmail(String email) {
    RegExp regExp = RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*');
    return regExp.hasMatch(email);
  }

  static bool isPhone(String phone) {
    RegExp regExp = RegExp(r'^1[3456789]\d{9}$');
    return regExp.hasMatch(phone);
  }
}
