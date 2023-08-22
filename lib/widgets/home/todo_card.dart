import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class TodoCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __TodoCardState();
}

class __TodoCardState extends State<TodoCard> {
  bool _isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 40,
      padding: const EdgeInsets.fromLTRB(12.0, 11.0, 8.0, 10.0),
      decoration: BoxDecoration(
        color: AppColors.dark12,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isCompleted = !_isCompleted;
              });
            },
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: _isCompleted ? AppColors.main : AppColors.dark02,
                borderRadius: BorderRadius.circular(4),
              ),
              child: _isCompleted
                  ? const Icon(
                      Icons.check,
                      size: 16,
                      color: AppColors.dark11,
                    )
                  : null,
            ),
          ),
          SizedBox(width: 10.w),
          SizedBox(
            width: 282.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '할 일',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: _isCompleted ? AppColors.dark04 : AppColors.dark10,
                    decoration: _isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/todo_menu.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
