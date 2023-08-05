import 'package:flutter/material.dart';
import 'package:junorasi/constant.dart';

class RoundedSquareTabIndicator extends Decoration {
  final BoxPainter _painter;

  RoundedSquareTabIndicator({required Color color, required double radius})
      : _painter = _RoundedSquarePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _painter;
  }
}

class _RoundedSquarePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _RoundedSquarePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Rect rect = offset & cfg.size!;
    final RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    canvas.drawRRect(rRect, _paint);
  }
}

class CustomTabBar extends StatelessWidget {
  final TabController tabController;

  CustomTabBar({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: accentSlideColor, 
        borderRadius: BorderRadius.circular(30),
      ),
      child: TabBar(
        controller: tabController,
        unselectedLabelColor: textPassiveColor,
        labelColor: primaryColor,
        indicator: RoundedSquareTabIndicator(color: onTaskColor, radius: 30),
        labelPadding: EdgeInsets.symmetric(horizontal: 30),
        tabs: const [
          Tab(
            child: Text('Dikerjakan'),
          ),
          Tab(
            child: Text('Selesai'),
          ),
        ],
      ),
    );
  }
}

class CustomTabBarView extends StatelessWidget {
  final TabController tabController;

  const CustomTabBarView({Key? key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: const [
        Text('Dikerjakan', style: TextStyle(color: textColor)),
        Text('Selesai', style: TextStyle(color: textColor)),
      ],
    );
  }
}
