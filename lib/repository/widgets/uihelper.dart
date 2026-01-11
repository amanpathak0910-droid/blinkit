import 'package:flutter/material.dart';


class Uihelper {
  static CustomImage({required String img}){
    return Image.asset("assets/images/$img");
  }
  static customText({required String text,required Color color, required FontWeight,String? fontFamily,required double fontSize}){
    return  Text(text,style: TextStyle(fontSize:fontSize,fontFamily: fontFamily??"regular",fontWeight: FontWeight,color:color ),);
  }
}