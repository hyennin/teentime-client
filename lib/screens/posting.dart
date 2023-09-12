import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teentime/src/colors.dart';

class Posting extends StatefulWidget {
  @override
  _PostingState createState() => _PostingState();
}

class _PostingState extends State<Posting> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark01,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: SvgPicture.asset(
              'assets/icons/back.svg',
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "글쓰기",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: AppColors.dark11,
              ),
            ),
            Text(
              "동아리 명 (틴타 고등학교)",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: AppColors.dark07,
              ),
            )
          ],
        ),
        backgroundColor: AppColors.dark01,
        shadowColor: Colors.transparent,
        actions: const <Widget>[
          // 오른쪽에 버튼 추가
          Padding(
            padding: EdgeInsets.symmetric(vertical: 19, horizontal: 16),
            child: Text(
              "완료",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: AppColors.dark11,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: 800.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            children: [
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.dark12,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(
                height: 644.h,
                child: Form(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.text,
                            style: const TextStyle(
                                color: AppColors.dark11), // 텍스트 색상 설정
                            obscureText: false,
                            controller: _titleController,
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.dark02), // 원하는 색상으로 변경
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.dark02), // 원하는 색상으로 변경
                              ),
                              hintText: '제목',
                              hintStyle: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: AppColors.dark05,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 12),
                            ),
                            cursorColor: AppColors.dark11,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.multiline,
                            style: const TextStyle(
                                color: AppColors.dark12), // 텍스트 색상 설정
                            obscureText: false,
                            controller: _contentController,
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent), // 원하는 색상으로 변경
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent), // 원하는 색상으로 변경
                              ),
                              hintText: '내용을 입력해주세요',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: AppColors.dark03,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 16),
                            ),
                            cursorColor: AppColors.dark11,
                            maxLines: null,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        child: SizedBox(
                          width: 336.w,
                          height: 56,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                        'assets/icons/img_btn.svg',
                                        width: 24,
                                        height: 24),
                                  ),
                                  const SizedBox(width: 16),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                        'assets/icons/vote_btn.svg',
                                        width: 24,
                                        height: 24),
                                  ),
                                  const SizedBox(width: 16),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                        'assets/icons/calendar_btn.svg',
                                        width: 24,
                                        height: 24),
                                  ),
                                  const SizedBox(width: 16),
                                  InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                        'assets/icons/link_btn.svg',
                                        width: 24,
                                        height: 24),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                    'assets/icons/setting_btn.svg',
                                    width: 24,
                                    height: 24),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
