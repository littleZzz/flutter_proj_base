///num 数的 扩展函数
///
extension myExt on num {
  ///格式化数字 整数就返回整数  小数就精确到两位 一位小数就精确一位
  num get mkfNum {
    var num = this;
    if (num.floor() == num) {
      return num.floor(); //是整数
    } else {
      return double.parse(num.toStringAsFixed(2));
    }
  }

  ///格式化数字 默认添加小数位
  String get decimals {
    var num = this;
    return num.toStringAsFixed(2);
  }
}
