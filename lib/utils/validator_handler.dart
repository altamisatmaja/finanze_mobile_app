class ValidatorHandler {
  String? validateEmail(value) {
    if (value!.isEmpty) {
      return 'Email wajib diisi';
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Masukkan format email yang benar';
    }
    return null;
  }

  String? validateUsername(value) {
    if (value!.isEmpty) {
      return 'Username wajib diisi';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value!.isEmpty) {
      return 'Password wajib diisi';
    }
    return null;
  }
}