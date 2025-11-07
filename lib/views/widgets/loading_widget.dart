import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {final double size;
  const LoadingWidget({super.key,  this.size = 60});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Platform.isAndroid? CircularProgressIndicator(
        color: Colors.blue,
      ):CupertinoActivityIndicator(
        color: Colors.blue,
      ),
    );
  }
}
