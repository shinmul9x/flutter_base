import 'package:flutter/material.dart';
import 'package:flutter_base/utils/utils.dart';
import 'package:get/get.dart';

abstract class DialogBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Padding(
          padding: mediaQuery.viewInsets.copyWith(
            left: Dimens.dimen32,
            right: Dimens.dimen32,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimens.dimen8),
                ),
                child: IntrinsicHeight(
                  child: Center(child: this.buildContent(context)),
                ),
              ),
              if (cancelable)
                IconButton(
                  icon: Icon(Icons.close),
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    Get.back();
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context);

  bool get cancelable => true;
}

class LoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        child: Center(
          child: Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: CircularProgressIndicator(
                backgroundColor: Color(0xff21409A),
                strokeWidth: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
