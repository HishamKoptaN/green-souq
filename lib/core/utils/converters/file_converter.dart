import 'package:universal_io/io.dart';

import 'package:json_annotation/json_annotation.dart';

class FileConverter implements JsonConverter<File?, String?> {
  const FileConverter();

  @override
  File? fromJson(String? json) {
    if (json == null) return null;
    return File(json); // نحوله إلى File باستخدام الـ path
  }

  @override
  String? toJson(File? object) {
    return object?.path; // نخزن المسار فقط
  }
}
