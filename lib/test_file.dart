import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestingPage extends StatelessWidget {
  const TestingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  MainContent({Key? key}) : super(key: key);

  var dragDirection = ''.obs;
  var startDXPoint = 0.0.obs;
  var startDYPoint = 0.0.obs;
  var velocity = 0.0.obs;

  @override
  Widget build(BuildContext context) {
    // void _onHorizontalDragStartHandler(DragStartDetails details) {
    //   dragDirection.value = "HORIZONTAL";
    //   startDXPoint.value = details.globalPosition.dx.floorToDouble();
    //   startDYPoint.value = details.globalPosition.dy.floorToDouble();
    // }

    // Track starting point of a vertical gesture
    // void _onVerticalDragStartHandler(DragStartDetails details) {
    //   dragDirection.value = "VERTICAL";
    //   startDXPoint.value = details.globalPosition.dx.floorToDouble();
    //   startDYPoint.value = details.globalPosition.dy.floorToDouble();
    // }

    /// Track current point of a gesture
    void _onDragUpdateHandler(DragUpdateDetails details) {
      dragDirection.value = "UPDATING";
      startDXPoint.value = details.globalPosition.dx.floorToDouble();
      startDYPoint.value = details.globalPosition.dy.floorToDouble();
    }

    /// What should be done at the end of the gesture ?
    void _onDragEnd(DragEndDetails details) {
      velocity.value =
          details.velocity.pixelsPerSecond.dx.abs().floorToDouble();
    }

    return GestureDetector(
      // onHorizontalDragStart: _onHorizontalDragStartHandler,
      // onVerticalDragStart: _onVerticalDragStartHandler,
      onVerticalDragUpdate: _onDragUpdateHandler,
      onVerticalDragEnd: _onDragEnd,
      child: Container(
        color: Colors.grey[100],
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(
                () => Text(
                  dragDirection.value,
                  style: const TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              Obx(
                () => Text(
                  'Start DX point: ${startDXPoint.value}',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Obx(
                () => Text(
                  'Start DY point: ${startDYPoint.value}',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Obx(() => Text(
                    'Velocity: ${velocity.value}',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
