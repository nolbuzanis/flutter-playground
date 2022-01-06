class ValidationMixin {
  String? validateEmail(String? value) {
        if (value == null || value.trim().isEmpty || !value.contains('@')) {
          return 'Please enter a valid email';
        }
      }

String? validatePassword(String? value) {
        if (value == null || value.trim().isEmpty) {
          return 'Password is required.';
        }
        if (value.length < 8) return 'Password must be at least 8 characters.';
      }
      
}