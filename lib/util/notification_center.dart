import 'package:event_bus/event_bus.dart';

/// 通知中心  EventBus等全局通知
///
class NotificationCenter {
  static final EventBus eventBus = EventBus();
}

/// Token失效事件
class TokenInvalidEvent {}

/// 路由跳转事件
class RouteUrlEvent {
  final String url;

  const RouteUrlEvent({
    required this.url,
  });
}
