import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  late final kits = <Widget>[
    const SpinKitRotatingCircle(color: Colors.red),
    const SpinKitRotatingPlain(color: Colors.red),
    const SpinKitChasingDots(color: Colors.red),
    const SpinKitPumpingHeart(color: Colors.red),
    const SpinKitPulse(color: Colors.red),
    const SpinKitDoubleBounce(color: Colors.red),
    const SpinKitWave(color: Colors.red, type: SpinKitWaveType.start),
    const SpinKitWave(color: Colors.red, type: SpinKitWaveType.center),
    const SpinKitWave(color: Colors.red, type: SpinKitWaveType.end),
    const SpinKitPianoWave(color: Colors.red, type: SpinKitPianoWaveType.start),
    const SpinKitPianoWave(
        color: Colors.red, type: SpinKitPianoWaveType.center),
    const SpinKitPianoWave(color: Colors.red, type: SpinKitPianoWaveType.end),
    const SpinKitThreeBounce(color: Colors.red),
    const SpinKitThreeInOut(color: Colors.red),
    const SpinKitWanderingCubes(color: Colors.red),
    const SpinKitWanderingCubes(color: Colors.red, shape: BoxShape.circle),
    const SpinKitCircle(color: Colors.red),
    const SpinKitFadingFour(color: Colors.red),
    const SpinKitFadingFour(color: Colors.red, shape: BoxShape.rectangle),
    const SpinKitFadingCube(color: Colors.red),
    const SpinKitCubeGrid(size: 51.0, color: Colors.red),
    const SpinKitFoldingCube(color: Colors.red),
    const SpinKitRing(
      color: Colors.red,
      lineWidth: 3,
    ),
    const SpinKitDualRing(
      color: Colors.red,
      lineWidth: 3,
    ),
    const SpinKitSpinningLines(color: Colors.red),
    const SpinKitFadingGrid(color: Colors.red),
    const SpinKitFadingGrid(color: Colors.red, shape: BoxShape.rectangle),
    const SpinKitSquareCircle(color: Colors.red),
    const SpinKitSpinningCircle(color: Colors.red),
    const SpinKitSpinningCircle(color: Colors.red, shape: BoxShape.rectangle),
    const SpinKitFadingCircle(color: Colors.red),
    const SpinKitHourGlass(color: Colors.red),
    const SpinKitPouringHourGlass(color: Colors.red),
    const SpinKitPouringHourGlassRefined(color: Colors.red),
    const SpinKitRipple(color: Colors.red),
    const SpinKitDancingSquare(color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("等待框"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 46,
          childAspectRatio: 2,
        ),
        padding: EdgeInsets.only(top: 32, bottom: 64),
        itemCount: kits.length,
        itemBuilder: (context, index) => kits[index],
      ),
    );
  }
}
