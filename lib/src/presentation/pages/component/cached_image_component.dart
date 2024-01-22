import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_loading_component.dart';

class CachedImageComponent extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final double borderRadius;
  final double borderWidth;
  final double? padding;

  const CachedImageComponent({
    Key? key,
    this.padding,
    required this.height,
    required this.width,
    required this.imageUrl,
    this.borderWidth = 0,
    this.borderRadius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: Style.white,
          width: borderWidth.h,
        ),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Padding(
            padding: EdgeInsets.all(5),
            child: Center(
              child: AppLoadingComponent(showLoadingTextForIOS: false),
            ),
          ),
          errorWidget: (context, _, __) => Image.asset(
            'assets/images/default_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
