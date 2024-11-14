class Validator {
  static String? required(
    dynamic value, {
    String? fieldName,
  }) {
    if (value == null) {
      return 'Bagian ini tidak boleh kosong';
    }

    if (value is String || value == null) {
      if (value.toString() == 'null') return 'Bagian ini tidak boleh kosong';
      if (value.isEmpty) return 'Bagian ini tidak boleh kosong';
    }

    if (value is List) {
      if (value.isEmpty) return 'Bagian ini tidak boleh kosong';
    }
    return null;
  }

  static String? price(String? value) {
    if (value == "") {
      return null;
    }
    int priceTemp = int.parse(value!.replaceAll(".", ""));
    bool isValueValid = priceTemp >= 1000000 && priceTemp <= 15000000;
    if (!isValueValid) {
      return 'Harga harus berkisar 1 juta - 15 Juta';
    }

    return null;
  }

  static String? email(String? value) {
    if (value!.isEmpty) return "Email tidak boleh kosong.";
    final isValidEmail = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+[.][a-zA-Z0-9]+",
    ).hasMatch(value);

    if (!isValidEmail) return "Email yang diinput tidak valid";
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) return 'Password tidak boleh kosong.';

    if (value.length < 8) {
      return 'Password harus terdiri dari minimal 8 karakter.';
    }

    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
      return 'Password harus mengandung setidaknya satu huruf besar.';
    }

    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
      return 'Password harus mengandung setidaknya satu huruf kecil.';
    }

    if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
      return 'Password harus mengandung setidaknya satu angka.';
    }

    if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(value)) {
      return "Password harus mengandung satu karakter khusus";
    }

    return null;
  }

  static String? confirmPassword(String? value, bool isPasswordMatch) {
    if (value!.isEmpty) {
      return "password tidak boleh kosong.";
    }

    if (!isPasswordMatch) {
      return "password tidak sama";
    }

    return null;
  }
}
