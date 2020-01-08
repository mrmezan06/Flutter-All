import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

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
    super.initState();

    controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    controller.addListener((){
      setState(() {
        dragAlignment = animation.value;
      });
    });

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
      onPanDown: (details){
        controller.stop();
      },
      onPanUpdate: (details){
        setState(() {
          dragAlignment += Alignment(
            details.delta.dx / (size.width / 2),
            details.delta.dy / (size.height / 2)
          );
        });
      },
      onPanEnd: (details){
        runAnimation(details.velocity.pixelsPerSecond, size);
      },
      child: Align(
        alignment: dragAlignment,
        child: Card(
          child: widget.child,
        ),
    )
    );
  }
  Animation<Alignment> animation;

  void runAnimation(Offset pixelsPerSecond,Size size) {
    animation = controller.drive(
      AlignmentTween(
        begin: dragAlignment,
        end: Alignment.center,
      ),
    );

    final unitsPerSecondX = pixelsPerSecond.dx / size.width;
    final unitsPerSecondY = pixelsPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    const spring = SpringDescription(
      mass: 30,
      stiffness: 1,
      damping: 1,
    );

    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);
    controller.animateWith(simulation);

    controller.reset();
    controller.forward();
  }

}

