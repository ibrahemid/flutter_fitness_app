import 'package:flutter/material.dart';

class OverlayContainer extends StatefulWidget {
  final Widget child;

  final OverlayContainerPosition position;

  final bool show;

  final bool asWideAsParent;

  OverlayContainer({
    Key key,
    @required this.show,
    @required this.child,
    this.asWideAsParent = false,
    this.position = const OverlayContainerPosition(),
  }) : super(key: key);

  @override
  _OverlayContainerState createState() => _OverlayContainerState();
}

class _OverlayContainerState extends State<OverlayContainer>
    with WidgetsBindingObserver {
  OverlayEntry _overlayEntry;
  bool _opened = false;

  @override
  void initState() {
    super.initState();
    if (widget.show) {
      _show();
    }
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeMetrics() {
    if (widget.show) {
      _show();
    } else {
      _hide();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (widget.show) {
      _show();
    } else {
      _hide();
    }
  }

  @override
  void didUpdateWidget(OverlayContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.show) {
      _show();
    } else {
      _hide();
    }
  }

  @override
  void dispose() {
    if (widget.show) {
      _hide();
    }
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _show() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(milliseconds: 280));
      if (_opened) {
        _overlayEntry.remove();
      }
      _overlayEntry = _buildOverlayEntry();
      Overlay.of(context).insert(_overlayEntry);
      _opened = true;
    });
  }

  void _hide() {
    if (_opened) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _overlayEntry.remove();
        _opened = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context);
    return Container();
  }

  OverlayEntry _buildOverlayEntry() {
    RenderBox renderBox = context.findRenderObject();
    return OverlayEntry(
      builder: (context) {
        return Container(
          color: Color.fromRGBO(38, 38, 38, 0.4),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}

class OverlayContainerPosition {
  const OverlayContainerPosition();
}
