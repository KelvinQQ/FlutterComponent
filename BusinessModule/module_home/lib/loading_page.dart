import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    late final kits = <Widget>[
      SpinKitRotatingCircle(color: color),
      SpinKitRotatingPlain(color: color),
      SpinKitChasingDots(color: color),
      SpinKitPumpingHeart(color: color),
      SpinKitPulse(color: color),
      SpinKitDoubleBounce(color: color),
      SpinKitWave(color: color, type: SpinKitWaveType.start),
      SpinKitWave(color: color, type: SpinKitWaveType.center),
      SpinKitWave(color: color, type: SpinKitWaveType.end),
      SpinKitPianoWave(color: color, type: SpinKitPianoWaveType.start),
      SpinKitPianoWave(color: color, type: SpinKitPianoWaveType.center),
      SpinKitPianoWave(color: color, type: SpinKitPianoWaveType.end),
      SpinKitThreeBounce(color: color),
      SpinKitThreeInOut(color: color),
      SpinKitWanderingCubes(color: color),
      SpinKitWanderingCubes(color: color, shape: BoxShape.circle),
      SpinKitCircle(color: color),
      SpinKitFadingFour(color: color),
      SpinKitFadingFour(color: color, shape: BoxShape.rectangle),
      SpinKitFadingCube(color: color),
      SpinKitCubeGrid(size: 51.0, color: color),
      SpinKitFoldingCube(color: color),
      SpinKitRing(
        color: color,
        lineWidth: 3,
      ),
      SpinKitDualRing(
        color: color,
        lineWidth: 3,
      ),
      SpinKitSpinningLines(color: color),
      SpinKitFadingGrid(color: color),
      SpinKitFadingGrid(color: color, shape: BoxShape.rectangle),
      SpinKitSquareCircle(color: color),
      SpinKitSpinningCircle(color: color),
      SpinKitSpinningCircle(color: color, shape: BoxShape.rectangle),
      SpinKitFadingCircle(color: color),
      SpinKitHourGlass(color: color),
      SpinKitPouringHourGlass(color: color),
      SpinKitPouringHourGlassRefined(color: color),
      SpinKitRipple(color: color),
      SpinKitDancingSquare(color: color),
    ];

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
