import 'dart:io';

import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Widget Function(Size s)> items;
  @override
  State<StatefulWidget> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  ScrollController controller = ScrollController();

  late double width;
  int position = 0;

  void scroll() => controller.animateTo(
        position * width,
        duration: const Duration(milliseconds: 300),
        curve: Curves.decelerate,
      );

  void changePosition(int value) {
    position = value;
    Future.delayed(Duration.zero, () => setState(() {}));
  }

  void next() {
    if (position < widget.items.length - 1) {
      changePosition(position + 1);
      scroll();
    }
  }

  void prev() {
    if (position > 0) {
      changePosition(position - 1);
      scroll();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, box) {
        width = box.maxWidth;
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: widget.items
                  .map(
                    (e) => Stack(
                      children: [
                        SizedBox(
                          width: box.maxWidth,
                          height: box.maxHeight,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: e(Size(box.maxWidth, box.maxHeight)),
                          ),
                        ),
                        if (position != 0)
                          Positioned(
                            left: 0,
                            top: 0,
                            bottom: 0,
                            child: CarouselButton(
                              onClick: () => prev(),
                              isRight: false,
                            ),
                          ),
                        if (position != widget.items.length - 1)
                          Positioned(
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: CarouselButton(
                              onClick: () => next(),
                              isRight: true,
                            ),
                          ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            Positioned(
              bottom: 24,
              child: CarouselIndicator(
                count: widget.items.length,
                selected: position,
              ),
            )
          ],
        );
      },
    );
  }
}

class CarouselButton extends StatefulWidget {
  const CarouselButton({
    Key? key,
    required this.onClick,
    required this.isRight,
  }) : super(key: key);

  final VoidCallback onClick;
  final bool isRight;
  @override
  State<CarouselButton> createState() => _CarouselButtonState();
}

class _CarouselButtonState extends State<CarouselButton> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    var colors = [Colors.black.withOpacity(0.6), Colors.transparent];
    if (widget.isRight) {
      colors = colors.reversed.toList();
    }
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: GestureDetector(
        onTap: () => widget.onClick(),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 100),
          opacity: hover ? 1 : 0.1,
          child: Container(
            height: double.infinity,
            width: 96,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
              ),
            ),
            child: Center(
              child: Icon(
                widget.isRight
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    Key? key,
    required this.count,
    required this.selected,
  }) : super(key: key);

  final int count;
  final int selected;

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    for (int i = 0; i < count; i++) {
      items.add(
        Container(
          key: Key("$i:$selected"),
          margin: const EdgeInsets.symmetric(horizontal: 12),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == selected ? Colors.white : const Color(0xFF3E3E3E),
          ),
        ),
      );
    }
    return Row(
      children: items,
    );
  }
}
