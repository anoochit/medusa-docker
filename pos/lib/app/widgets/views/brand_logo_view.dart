import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BrandLogoView extends GetView {
  const BrandLogoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.storefront_outlined,
      size: 32.0,
    );
  }
}
