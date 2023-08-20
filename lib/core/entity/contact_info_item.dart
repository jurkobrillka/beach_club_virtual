import 'package:flutter/cupertino.dart';

class ContactInfoItem{
  final String title;
  final ImageIcon icon;
  final VoidCallback onPress;
  final bool endIcon;

  ContactInfoItem(
  {required this.title,required this.icon,required this.onPress,required this.endIcon});
}