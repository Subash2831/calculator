import 'dart:ui';

import 'package:flutter/material.dart';
class img extends StatelessWidget {
  const img({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            height: 600,
            width: double.infinity,
            color: Colors.cyan,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Center(
                child: Container(
                  height:300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    border: Border.all(),
                    borderRadius: BorderRadius.zero,
                  ),
                  child: ClipRect(
                    child: BackdropFilter(filter:ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                        child: Center(child: Text("ok"))),
                  ),

                ),
              ),
            ),
          ),
        ),
      ],
      ),
    );
  }
}
