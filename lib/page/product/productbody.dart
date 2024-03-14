import 'package:flutter/material.dart';
import '../../data/model/productmodel.dart';
import '../../conf/const.dart';

Widget itemProView(Product itemPro){
  return Container(
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.symmetric(vertical: 4),
    decoration: const BoxDecoration(color: Color.fromARGB(255, 139, 171, 231)),
    child: Container(
      width: 150,
      height: 120,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15)
      ),
      child: Image.asset(
        urlimg + itemPro.img!,
        fit: BoxFit.cover,
        ),
    ),
  );
}