

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/ui/styles/styles.dart';

Widget FromField(controller, inputType, hint) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: AppStyles.textFieldDecoration(hint),
    style: AppStyles.myTextStyle
  );
}

//--------------------------

Widget SearchFromField(controller,hint) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFFf5f8fd),
      borderRadius: BorderRadius.all(Radius.circular(30.r)),
    ),
    child: Row(
      children: [
        IconButton(onPressed:(){},
            icon: Icon(Icons.search)),
        Expanded(
          child: TextFormField(
              controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
          ),
        ),
      ],
    ),
  );
}