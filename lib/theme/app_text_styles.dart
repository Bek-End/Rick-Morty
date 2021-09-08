import 'package:flutter/material.dart';

import 'app_colors.dart';

// Text Styles for text don't uses in textTheme

class AppTextStyles {
  static final dateValue = TextStyle(
    fontSize: 14,
    letterSpacing: 0.25,
    height: 1.4,
    color: AppColors.subTitle.withOpacity(0.6),
  );
  static final nameValue = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.5,
    height: 1.5,
  );
  static final infoValue = TextStyle(
    fontSize: 13,
    letterSpacing: 0.5,
    height: 1.5,
  );
}
