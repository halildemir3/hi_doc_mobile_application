import 'package:flutter/material.dart';


import '../constant/colors.dart';
import '../constant/styles.dart';

class SearchBarItem extends StatelessWidget {
  const SearchBarItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: searchWhite,),
      child: TextFormField(decoration: texFieldDecoration,),);
  }
}