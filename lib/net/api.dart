enum HttpMethod { get, post }

extension HttpMethodExt on HttpMethod {
  String get value {
    switch (this) {
      case HttpMethod.get:
        return 'GET';
      case HttpMethod.post:
        return 'POST';
      default:
        return 'GET';
    }
  }
}

abstract class TargetType {
  String get path;

  HttpMethod get method;

  Map<String, dynamic> get parameters;
}

class API extends TargetType {
  @override
  HttpMethod get method {
    return HttpMethod.post;
  }

  @override
  Map<String, dynamic> get parameters => {};

  @override
  String get path => throw UnimplementedError();
}
