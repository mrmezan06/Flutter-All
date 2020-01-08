import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(home: PhysicsCardDragDemo()));
}
class PhysicsCardDragDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DraggableCard(
        child: FlutterLogo(
          size: 128,
        ),
      ),
    );
  }
}

class DraggableCard extends StatefulWidget {
  final Widget child;
  DraggableCard({this.child});

  @override
  DraggableCardState createState() => DraggableCardState();
}
class DraggableCardState extends State<DraggableCard> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Alignment dragAlignment = Alignment.center;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanDown: (details){},
      onPanUpdate: (details){
        setState(() {
          dragAlignment += Alignment(
            details.delta.dx / (size.width / 2),
            details.delta.dy / (size.height / 2)
          );
        });
      },
      onPanEnd: (details){},
      child: Align(
        alignment: dragAlignment,
        child: Card(
          child: widget.child,
        ),
    )
    );
  }

}

