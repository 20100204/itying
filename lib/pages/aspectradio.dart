import 'package:flutter/material.dart';

class AspectRationLianXi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return this._get1();
  }

  Widget _get1() {
    return Container(
         width: 200,
        child: AspectRatio(
          aspectRatio: 3.0/1.0,
          child: Container(
            color: Colors.lightBlue,
          ),
        ),
    );
  }
}
