String getErrorMessage(Map<String, dynamic>? errors) {
  if (errors == null) {
    return "";
  }

  var errorMessage = StringBuffer();
  errors.forEach((key, value) {
    if (value is String) {
      errorMessage.write("$value, ");
    }
    if (value is List<String>) {
      errorMessage.write(key);
      errorMessage.write(" : ${value[0]}, ");
    }
  });
  return errorMessage
      .toString()
      .replaceAll(", ", "")
      .replaceAll("validation.", "");
}
