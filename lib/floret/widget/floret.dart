import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

typedef FloretParent<T extends Object> = T Function(Widget child);
typedef FloretFactory = Function(Widget child);

// ignore: camel_case_types
class fr {
  static FloretParent<Padding> padding(EdgeInsets padding) =>
      (Widget child) => Padding(
            child: child,
            padding: padding,
          );
  static FloretParent<Padding> p(double padding) => (Widget child) => Padding(
        child: child,
        padding: EdgeInsets.all(padding),
      );
  static FloretParent<Padding> px(double padding) => (Widget child) => Padding(
        child: child,
        padding: EdgeInsets.symmetric(horizontal: padding),
      );
  static FloretParent<Padding> py(double padding) => (Widget child) => Padding(
        child: child,
        padding: EdgeInsets.symmetric(horizontal: padding),
      );
  static FloretParent<Padding> pt(double padding) => (Widget child) => Padding(
        child: child,
        padding: EdgeInsets.only(top: padding),
      );
  static FloretParent<Padding> pb(double padding) => (Widget child) => Padding(
        child: child,
        padding: EdgeInsets.only(bottom: padding),
      );
  static FloretParent<Padding> pl(double padding) => (Widget child) => Padding(
        child: child,
        padding: EdgeInsets.only(left: padding),
      );
  static FloretParent<Padding> pr(double padding) => (Widget child) => Padding(
        child: child,
        padding: EdgeInsets.only(right: padding),
      );

  static FloretParent<Container> margin(EdgeInsets margin) =>
      (Widget child) => Container(
            child: child,
            margin: margin,
          );
  static FloretParent<Container> m(double margin) =>
      (Widget child) => Container(
            child: child,
            margin: EdgeInsets.all(margin),
          );
  static FloretParent<Container> mx(double margin) =>
      (Widget child) => Container(
            child: child,
            margin: EdgeInsets.symmetric(horizontal: margin),
          );
  static FloretParent<Container> my(double margin) =>
      (Widget child) => Container(
            child: child,
            margin: EdgeInsets.symmetric(horizontal: margin),
          );
  static FloretParent<Container> mt(double margin) =>
      (Widget child) => Container(
            child: child,
            margin: EdgeInsets.only(top: margin),
          );
  static FloretParent<Container> mb(double margin) =>
      (Widget child) => Container(
            child: child,
            margin: EdgeInsets.only(bottom: margin),
          );
  static FloretParent<Container> ml(double margin) =>
      (Widget child) => Container(
            child: child,
            margin: EdgeInsets.only(left: margin),
          );
  static FloretParent<Container> mr(double margin) =>
      (Widget child) => Container(
            child: child,
            margin: EdgeInsets.only(right: margin),
          );

  static FloretParent<Align> align(Alignment align) => (Widget child) => Align(
        child: child,
        alignment: align,
      );
  static Align topLeft(Widget child) => Align(
        child: child,
        alignment: Alignment.topLeft,
      );
  static Align topCenter(Widget child) => Align(
        child: child,
        alignment: Alignment.topCenter,
      );
  static Align topRight(Widget child) => Align(
        child: child,
        alignment: Alignment.topRight,
      );
  static Align centerLeft(Widget child) => Align(
        child: child,
        alignment: Alignment.centerLeft,
      );
  static Align center(Widget child) => Align(
        child: child,
        alignment: Alignment.center,
      );
  static Align centerRight(Widget child) => Align(
        child: child,
        alignment: Alignment.centerRight,
      );
  static Align bottomLeft(Widget child) => Align(
        child: child,
        alignment: Alignment.bottomLeft,
      );
  static Align bottomCenter(Widget child) => Align(
        child: child,
        alignment: Alignment.bottomCenter,
      );
  static Align bottomRight(Widget child) => Align(
        child: child,
        alignment: Alignment.bottomRight,
      );

  static FloretParent<SizedBox> size(double width, double height) =>
      (Widget child) => SizedBox(
            child: child,
            width: width,
            height: height,
          );
  static FloretParent<SizedBox> width(double width) =>
      (Widget child) => SizedBox(
            child: child,
            width: width,
          );
  static FloretParent<SizedBox> height(double height) =>
      (Widget child) => SizedBox(
            child: child,
            height: height,
          );
  static FloretParent<SizedBox> square(double size) =>
      (Widget child) => SizedBox.square(
            child: child,
            dimension: size,
          );
  static SizedBox expandSize(Widget child) => SizedBox.expand(
        child: child,
      );

  static fullSize(double size) => (Widget child) => SizedBox(
        child: child,
        width: double.infinity,
        height: double.infinity,
      );
  static SizedBox fullWidth(Widget child) => SizedBox(
        child: child,
        width: double.infinity,
      );
  static SizedBox fullHeight(Widget child) => SizedBox(
        child: child,
        height: double.infinity,
      );

  static FloretParent<ConstrainedBox> maxSize(double width, double height) =>
      (Widget child) => ConstrainedBox(
            child: child,
            constraints: BoxConstraints(
              maxWidth: width,
              maxHeight: height,
            ),
          );
  static FloretParent<ConstrainedBox> maxWidth(double width) =>
      (Widget child) => ConstrainedBox(
            child: child,
            constraints: BoxConstraints(
              maxWidth: width,
            ),
          );
  static FloretParent<ConstrainedBox> maxHeight(double height) =>
      (Widget child) => ConstrainedBox(
            child: child,
            constraints: BoxConstraints(
              maxHeight: height,
            ),
          );
  static FloretParent<ConstrainedBox> minSize(double width, double height) =>
      (Widget child) => ConstrainedBox(
            child: child,
            constraints: BoxConstraints(
              minWidth: width,
              minHeight: height,
            ),
          );
  static FloretParent<ConstrainedBox> minWidth(double width) =>
      (Widget child) => ConstrainedBox(
            child: child,
            constraints: BoxConstraints(
              minWidth: width,
            ),
          );
  static FloretParent<ConstrainedBox> minHeight(double height) =>
      (Widget child) => ConstrainedBox(
            child: child,
            constraints: BoxConstraints(
              minHeight: height,
            ),
          );

  static FloretParent<FractionallySizedBox> sizePercent(
          double width, double height) =>
      (Widget child) => FractionallySizedBox(
            child: child,
            widthFactor: width / 100,
            heightFactor: height / 100,
          );
  static FloretParent<FractionallySizedBox> widthPercent(double width) =>
      (Widget child) => FractionallySizedBox(
            child: child,
            widthFactor: width / 100,
          );
  static FloretParent<FractionallySizedBox> heightPercent(double height) =>
      (Widget child) => FractionallySizedBox(
            child: child,
            heightFactor: height / 100,
          );

  static FloretParent<FractionallySizedBox> sizeFactor(
          double width, double height) =>
      (Widget child) => FractionallySizedBox(
            child: child,
            widthFactor: width,
            heightFactor: height,
          );
  static FloretParent<FractionallySizedBox> widthFactor(double width) =>
      (Widget child) => FractionallySizedBox(
            child: child,
            widthFactor: width,
          );
  static FloretParent<FractionallySizedBox> heightFactor(double height) =>
      (Widget child) => FractionallySizedBox(
            child: child,
            heightFactor: height,
          );

  static FittedBox fitted(Widget child) => FittedBox(
        child: child,
      );

  static FloretParent<ColoredBox> bg(Color color) =>
      (Widget child) => ColoredBox(
            child: child,
            color: color,
          );
  static FloretParent<ColoredBox> backgroundColor(Color color) =>
      (Widget child) => ColoredBox(
            child: child,
            color: color,
          );

  static FloretParent<Opacity> opacity(double opacity) =>
      (Widget child) => Opacity(
            child: child,
            opacity: opacity,
          );

  static FloretParent<ClipRRect> rounded([double rounded = 99999]) =>
      (Widget child) => ClipRRect(
            child: child,
            borderRadius: BorderRadius.all(Radius.circular(rounded)),
          );

  static FloretParent<DecoratedBox> decoratedBox(Decoration decoration) =>
      (Widget child) => DecoratedBox(
            child: child,
            decoration: decoration,
          );

  static FloretParent<DecoratedBox> border(BoxBorder border) =>
      (Widget child) => DecoratedBox(
            child: child,
            decoration: BoxDecoration(
              border: border,
            ),
          );
  static FloretParent<DecoratedBox> shadows(List<BoxShadow> shadows) =>
      (Widget child) => DecoratedBox(
            child: child,
            decoration: BoxDecoration(
              boxShadow: shadows,
            ),
          );
  static FloretParent<DecoratedBox> gradient(Gradient gradient) =>
      (Widget child) => DecoratedBox(
            child: child,
            decoration: BoxDecoration(
              gradient: gradient,
            ),
          );

  static FloretParent<Hero> heroTag(String hero) => (Widget child) => Hero(
        child: child,
        tag: hero,
      );

  static FloretParent<IgnorePointer> ignorePointer([bool ignore = true]) =>
      (Widget child) => IgnorePointer(
            child: child,
            ignoring: ignore,
          );
  static FloretParent<AbsorbPointer> absortPointer([bool absorb = true]) =>
      (Widget child) => AbsorbPointer(
            child: child,
            absorbing: absorb,
          );

  static FloretParent<Tooltip> tooltip(String message) =>
      (Widget child) => Tooltip(
            child: child,
            message: message,
          );

  static FloretParent<Transform> rotate(double angle) =>
      (Widget child) => Transform.rotate(
            child: child,
            angle: angle,
          );
  static FloretParent<Transform> scale(double scale) =>
      (Widget child) => Transform.scale(
            child: child,
            scale: scale,
          );
  static FloretParent<Transform> translate(double dx, double dy) =>
      (Widget child) => Transform.translate(
            child: child,
            offset: Offset(dx, dy),
          );

  static FloretParent<BackdropFilter> backdropFilter(ImageFilter filter) =>
      (Widget child) => BackdropFilter(
            child: child,
            filter: filter,
          );

  static FloretParent<Flexible> flex([int flex = 1]) =>
      (Widget child) => Flexible(
            child: child,
            flex: flex,
          );

  static FloretParent<AspectRatio> aspectRatio(double aspectRatio) =>
      (Widget child) => AspectRatio(
            child: child,
            aspectRatio: aspectRatio,
          );

  static FloretParent<AnimatedBuilder> animated(Animation controller,
          Widget Function(BuildContext context, Widget? child) builder) =>
      (Widget child) => AnimatedBuilder(
            animation: controller,
            builder: builder,
          );

  static FloretParent<Positioned> positioned({
    double? top,
    double? left,
    double? bottom,
    double? right,
  }) =>
      (Widget child) => Positioned(
            child: child,
            top: top,
            left: left,
            bottom: bottom,
            right: right,
          );

  static FloretParent<SingleChildScrollView> scrollable({
    ScrollController? controller,
    Axis scrollDirection = Axis.vertical,
    bool? primary,
    bool reverse = false,
    ScrollPhysics? scrollPhysics,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    String? restorationId,
  }) =>
      (Widget child) => SingleChildScrollView(
            child: child,
            controller: controller,
            scrollDirection: scrollDirection,
            primary: primary,
            reverse: reverse,
            physics: scrollPhysics,
            dragStartBehavior: dragStartBehavior,
            restorationId: restorationId,
          );

  static FloretParent<GestureDetector> on({
    void Function(TapDownDetails)? tapDown,
    void Function(TapUpDetails)? tapUp,
    VoidCallback? tap,
    VoidCallback? tapCancel,
    VoidCallback? secondaryTap,
    void Function(TapDownDetails)? secondaryTapDown,
    void Function(TapUpDetails)? secondaryTapUp,
    VoidCallback? secondaryTapCancel,
    void Function(TapDownDetails)? tertiaryTapDown,
    void Function(TapUpDetails)? tertiaryTapUp,
    VoidCallback? tertiaryTapCancel,
    void Function(TapDownDetails)? doubleTapDown,
    VoidCallback? doubleTap,
    VoidCallback? doubleTapCancel,
    VoidCallback? longPress,
    void Function(LongPressStartDetails)? longPressStart,
    void Function(LongPressMoveUpdateDetails)? longPressMoveUpdate,
    VoidCallback? longPressUp,
    void Function(LongPressEndDetails)? longPressEnd,
    VoidCallback? secondaryLongPress,
    void Function(LongPressStartDetails)? secondaryLongPressStart,
    void Function(LongPressMoveUpdateDetails)? secondaryLongPressMoveUpdate,
    VoidCallback? secondaryLongPressUp,
    void Function(LongPressEndDetails)? secondaryLongPressEnd,
    void Function(DragDownDetails)? verticalDragDown,
    void Function(DragStartDetails)? verticalDragStart,
    void Function(DragUpdateDetails)? verticalDragUpdate,
    void Function(DragEndDetails)? verticalDragEnd,
    VoidCallback? verticalDragCancel,
    void Function(DragDownDetails)? horizontalDragDown,
    void Function(DragStartDetails)? horizontalDragStart,
    void Function(DragUpdateDetails)? horizontalDragUpdate,
    void Function(DragEndDetails)? horizontalDragEnd,
    VoidCallback? horizontalDragCancel,
    void Function(ForcePressDetails)? forcePressStart,
    void Function(ForcePressDetails)? forcePressPeak,
    void Function(ForcePressDetails)? forcePressUpdate,
    void Function(ForcePressDetails)? forcePressEnd,
    void Function(DragDownDetails)? panDown,
    void Function(DragStartDetails)? panStart,
    void Function(DragUpdateDetails)? panUpdate,
    void Function(DragEndDetails)? panEnd,
    VoidCallback? panCancel,
    void Function(ScaleStartDetails)? scaleStart,
    void Function(ScaleUpdateDetails)? scaleUpdate,
    void Function(ScaleEndDetails)? scaleEnd,
  }) =>
      (Widget child) => GestureDetector(
            onTapDown: tapDown,
            onTapUp: tapUp,
            onTap: tap,
            onTapCancel: tapCancel,
            onSecondaryTap: secondaryTap,
            onSecondaryTapDown: secondaryTapDown,
            onSecondaryTapUp: secondaryTapUp,
            onSecondaryTapCancel: secondaryTapCancel,
            onTertiaryTapDown: tertiaryTapDown,
            onTertiaryTapUp: tertiaryTapUp,
            onTertiaryTapCancel: tertiaryTapCancel,
            onDoubleTapDown: doubleTapDown,
            onDoubleTap: doubleTap,
            onDoubleTapCancel: doubleTapCancel,
            onLongPress: longPress,
            onLongPressStart: longPressStart,
            onLongPressMoveUpdate: longPressMoveUpdate,
            onLongPressUp: longPressUp,
            onLongPressEnd: longPressEnd,
            onSecondaryLongPress: secondaryLongPress,
            onSecondaryLongPressStart: secondaryLongPressStart,
            onSecondaryLongPressMoveUpdate: secondaryLongPressMoveUpdate,
            onSecondaryLongPressUp: secondaryLongPressUp,
            onSecondaryLongPressEnd: secondaryLongPressEnd,
            onVerticalDragDown: verticalDragDown,
            onVerticalDragStart: verticalDragStart,
            onVerticalDragUpdate: verticalDragUpdate,
            onVerticalDragEnd: verticalDragEnd,
            onVerticalDragCancel: verticalDragCancel,
            onHorizontalDragDown: horizontalDragDown,
            onHorizontalDragStart: horizontalDragStart,
            onHorizontalDragUpdate: horizontalDragUpdate,
            onHorizontalDragEnd: horizontalDragEnd,
            onHorizontalDragCancel: horizontalDragCancel,
            onForcePressStart: forcePressStart,
            onForcePressPeak: forcePressPeak,
            onForcePressUpdate: forcePressUpdate,
            onForcePressEnd: forcePressEnd,
            onPanDown: panDown,
            onPanStart: panStart,
            onPanUpdate: panUpdate,
            onPanEnd: panEnd,
            onPanCancel: panCancel,
            onScaleStart: scaleStart,
            onScaleUpdate: scaleUpdate,
            onScaleEnd: scaleEnd,
            child: child,
          );
}
