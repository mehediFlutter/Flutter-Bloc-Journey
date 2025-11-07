import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final double paddingLeft, paddingTop, paddingRight, paddingBottom;
  final bool isTextOverFlow ;
  final TextAlign textAlign;


  const CustomText({
    super.key,
    required this.text,
    this.textColor = const Color(0XFF0D8B3F),
    this.fontSize = 12,
    this.fontWeight = FontWeight.w500,
    this.paddingLeft = 0,
    this.paddingTop = 0,
    this.paddingRight = 0,
    this.paddingBottom = 0,
    this.isTextOverFlow = true,
     this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        paddingLeft,
        paddingTop,
        paddingRight,
        paddingBottom,
      ),
      child: Text(
        text,
        overflow: isTextOverFlow? TextOverflow.ellipsis:null,
        style: GoogleFonts.poppins(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,

        ),
        textAlign: textAlign,
      ),
    );
  }
}
