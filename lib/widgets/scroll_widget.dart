import 'package:flutter/material.dart';

typedef Widget ScrollRightButtonBuilder(BUildContext, Widget);

class ScrollButton extends StatefulWidget {
  final ScrollRightButtonBuilder builder;
  final double topPositionPercent;
  final EdgeInsets? padding;
  final int itemsLength;

  ScrollButton(
      {required this.builder,
      required this.topPositionPercent,
      this.padding = EdgeInsets.zero,
      required this.itemsLength})
      : super();

  @override
  _ScrollButtonState createState() => _ScrollButtonState();
}

class _ScrollButtonState extends State<ScrollButton> {
  bool hideLeft = true;
  bool hideRight = false;
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => _scrollListener());
    if (widget.itemsLength < 5) {
      hideRight = true;
    }
  }

  void _scrollListener() {
    print(
      '${_controller.position.minScrollExtent} ${_controller.position.maxScrollExtent} ${_controller.position.pixels}',
    );

    if (_controller.position.pixels <= _controller.position.minScrollExtent) {
      if (!hideLeft) setState(() => hideLeft = true);
    } else {
      if (hideLeft) setState(() => hideLeft = false);
    }
    if (_controller.position.pixels >= _controller.position.maxScrollExtent) {
      if (!hideRight) setState(() => hideRight = true);
    } else {
      if (hideRight) setState(() => hideRight = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: widget.builder(context, _controller),
          ),
          Positioned(
            left: 0,
            top: constraints.maxHeight * widget.topPositionPercent,
            child: InkWell(
              onTap: () {
                _controller.animateTo(
                  _controller.offset - MediaQuery.of(context).size.width / 2,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              },
              child: Container(
                height: 70,
                width: 20,
                color: Colors.black.withOpacity(0.3),
                child: Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: constraints.maxHeight * widget.topPositionPercent,
            child: InkWell(
              onTap: () {
                _controller.animateTo(
                  _controller.offset + MediaQuery.of(context).size.width / 2,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              },
              child: Container(
                height: 70,
                width: 20,
                color: Colors.black.withOpacity(0.3),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
