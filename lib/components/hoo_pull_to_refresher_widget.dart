import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// @desc: 全局下拉刷新上拉加载布局
class HooPullToRefresherWidget extends StatefulWidget {
  ///页面
  final Widget child;

  ///是否使用下拉刷新
  final bool enablePullDown;

  ///是否使用上拉加载
  final bool enablePullUp;
  final bool hideFooterWhenNotFull;

  ///刷新回调
  final FutureOr<dynamic> Function(RefreshController)? onRefresh;

  ///加载回调
  final FutureOr<dynamic> Function(RefreshController)? onLoading;

  final RefreshController? refreshController;

  final Widget? footer;

  const HooPullToRefresherWidget({
    Key? key,
    required this.child,
    this.enablePullDown = true,
    this.enablePullUp = true,
    this.hideFooterWhenNotFull = true,
    this.onRefresh,
    this.onLoading,
    this.refreshController,
    this.footer,
  }) : super(key: key);

  @override
  State<HooPullToRefresherWidget> createState() =>
      _HooPullToRefresherWidgetState();
}

class _HooPullToRefresherWidgetState extends State<HooPullToRefresherWidget>
    with TickerProviderStateMixin {
  ///刷新控制器
  late final RefreshController _refreshController =
      widget.refreshController ?? RefreshController(initialRefresh: false);

  ///闲置加载状态
  bool idleLoadingState = true;

  ///闲置刷新状态
  bool idleRefreshState = true;

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _onRefresh() async {
    idleLoadingState
        ? await widget.onRefresh?.call(_refreshController)
        : _refreshController.refreshToIdle();
  }

  void _onLoading() async {
    idleRefreshState
        ? await widget.onLoading?.call(_refreshController)
        : _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
        headerTriggerDistance: 60,
        //viewport不满一屏加载禁用
        hideFooterWhenNotFull: widget.hideFooterWhenNotFull,
        //阻尼
        dragSpeedRatio: 0.7,
        //惯性触发
        enableBallisticLoad: true,
        //失败滑动重拾
        enableLoadingWhenFailed: true,
        child: SmartRefresher(
          enablePullDown: widget.enablePullDown,
          enablePullUp: widget.enablePullUp,
          header: const WaterDropHeader(),
          footer: widget.footer ?? const ClassicFooter(),
          controller: _refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: widget.child,
        ));
  }
  // /// 下拉布局
  // _buildHeaderLayout() {
  //   return CustomHeader(
  //     builder: (BuildContext context, RefreshStatus? mode) {
  //       return Center(child: Text("下拉刷新啊啊啊啊啊"));
  //     },
  //   );
  // }
  // /// 上拉布局
  // _buildFooterLayout() {
  //   return CustomFooter(
  //     builder: (BuildContext context, LoadStatus? mode) {
  //       Widget body;
  //       if (mode == LoadStatus.idle) {
  //         idleLoadingState = true;
  //         body = const Text("上拉加载");
  //       } else if (mode == LoadStatus.loading) {
  //         idleLoadingState = false;
  //         body = const CupertinoActivityIndicator();
  //       } else if (mode == LoadStatus.failed) {
  //         idleLoadingState = true;
  //         body = const Text("加载失败！请上拉重试！");
  //         // if(NetworkUtil){
  //         // } else{
  //         // }
  //       } else if (mode == LoadStatus.canLoading) {
  //         idleLoadingState = false;
  //         body = const Text("松手,加载更多!");
  //       } else if (mode == LoadStatus.noMore) {
  //         idleLoadingState = true;
  //         body = const Text("没有更多数据了!");
  //       } else {
  //         idleLoadingState = true;
  //         body = const Text("未知错误!");
  //       }
  //       return Container(
  //         height: 50,
  //         child: Center(child: body),
  //       );
  //     },
  //   );
  // }
}
