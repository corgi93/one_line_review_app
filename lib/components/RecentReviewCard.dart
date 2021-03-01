import 'package:flutter/material.dart';

class RecentReviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPress,
      child: Container(
        child: Row(
          children: [
            // 리뷰어 이미지? 영화 이미지?
          ],
        ),
        margin: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          color: Color(0xff1d1e33),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
    ;
  }
}
