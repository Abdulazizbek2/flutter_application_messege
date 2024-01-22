import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';

class AppLoadingComponent extends StatelessWidget {
  final bool showLoadingTextForIOS;

  const AppLoadingComponent({
    Key? key,
    this.showLoadingTextForIOS = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Platform.isAndroid
          ? SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Style.blue),
                ),
              ),
            )
          : SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const CupertinoActivityIndicator(),
                  Visibility(
                    visible: showLoadingTextForIOS,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Loading'),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
