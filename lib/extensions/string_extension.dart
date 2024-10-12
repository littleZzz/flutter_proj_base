///
///
extension StringExtension on String {
  ///获取图片的路径
  String imgPath({String format = "png"}) {
    var path = this;
    return 'assets/images/$path.$format';
  }

  String get gmailhandle {
    // Google邮箱别名处理
    if (isNotEmpty && (contains("@gmail") || contains("@googlemail"))) {
      String emailName = split("@").first;
      return replaceAll(emailName, emailName.replaceAll(".", ""));
    }
    return this;
  }

  String get scretString {
    if (length <= 2) {
      return this;
    }

    String start = substring(0, 1);
    String end = substring(length - 1);
    String middle = substring(1, length - 1).replaceAll(RegExp(r'\w'), '*');

    return '$start$middle$end';
  }

  ///数字个位数加上0
  String twoDigit() {
    var name = this;
    if (name.length == 1) {
      return "${name}0";
    } else {
      return name;
    }
  }

  ///数字格式化为保留两位小数比如 0->0.00  0.1->0.10  0.01->0.01
  String get numTwoDec {
    var name = trim();
    if (num.tryParse(name) == null) {
      return ""; //原始数据不是数字格式 直接返回空串
    } else {
      if (name.contains(".")) {
        var spilt = name.split(".");
        return "${spilt[0]}.${spilt[1].twoDigit()}";
      } else {
        return "$name.00";
      }
    }
  }

  bool isValidUrl() {
    // 定义正则表达式
    final RegExp urlPattern = RegExp(
      r'^(https?:\/\/)?' // 协议
      r'([a-zA-Z0-9\-]+\.)+[a-zA-Z]{2,}' // 域名
      r'(:\d+)?(\/[^\s]*)?$', // 端口和路径
    );

    // 检查 URL 是否匹配正则表达式
    return urlPattern.hasMatch(this);
  }

  /// 首字母大写
  String capitalize() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}

extension StringNullExtension on String? {
  bool get isEmptyHoo {
    return (this ?? "").isEmpty;
  }

  bool get isNotEmptyHoo {
    return (this ?? "").isNotEmpty;
  }

  int get lengthHoo {
    return (this ?? "").length;
  }

  num toNum() {
    return num.tryParse(this ?? "") ?? 0;
  }
}
