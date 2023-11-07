import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBarPage extends StatelessWidget {
  const ProgressBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Bar"),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              restartAnimation: true,
              radius: 60,
              animation: true,
              animationDuration: 1200,
              lineWidth: 10,
              percent: 0.24,
              header: const Text(
                "Bu Circular Percent Indicator",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              center: const Icon(
                Icons.person_pin,
                size: 50,
                color: Colors.green,
              ),
              footer: Text(
                "24%",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.green,
            ),
            const SizedBox(height: 24),
            CircularSeekBar(
              width: double.infinity,
              height: 250,
              progress: 0.5,
              barWidth: 8,
              startAngle: 45,
              sweepAngle: 270,
              strokeCap: StrokeCap.round,
              progressGradientColors: const [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple
              ],
              innerThumbRadius: 5,
              innerThumbStrokeWidth: 3,
              innerThumbColor: Colors.white,
              outerThumbRadius: 5,
              outerThumbStrokeWidth: 10,
              outerThumbColor: Colors.blueAccent,
              animation: true,
            ),
            CircularSeekBar(
              width: double.infinity,
              animDurationMillis: 150,
              height: 250,
              barWidth: 8,
              startAngle: 45,
              sweepAngle: 270,
              strokeCap: StrokeCap.butt,
              progressGradientColors: const [
                Colors.blue,
                Colors.indigo,
                Colors.purple
              ],
              dashWidth: 1,
              dashGap: 2,
              animation: true,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: LinearPercentIndicator(
                width: 200,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2000,
                percent: 0.9,
                leading: Text("left content"),
                trailing: Text("right content"),
                center: Text("90.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
