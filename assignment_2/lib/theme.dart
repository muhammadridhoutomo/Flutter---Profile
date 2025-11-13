import 'package:flutter/material.dart';

// 🎨 Colors
Color black = const Color(0xFF000000);
Color gray1 = const Color(0xFF929292);
Color gray2 = const Color(0xFFA5A5A5);
Color blue = const Color(0xFF0071D8);
Color white = const Color(0xFFFFFFFF);

// 🅰️ Typography (Montserrat)
TextStyle regular10 =
    const TextStyle(fontFamily: 'Montserrat', fontSize: 10, fontWeight: FontWeight.w400);
TextStyle medium10 = regular10.copyWith(fontWeight: FontWeight.w600);
TextStyle bold10 = regular10.copyWith(fontWeight: FontWeight.w700);

TextStyle regular12 = regular10.copyWith(fontSize: 12);
TextStyle medium12 = regular12.copyWith(fontWeight: FontWeight.w600);
TextStyle bold12 = regular12.copyWith(fontWeight: FontWeight.w700);

TextStyle regular14 = regular10.copyWith(fontSize: 14);
TextStyle medium14 = regular14.copyWith(fontWeight: FontWeight.w600);
TextStyle bold14 = regular14.copyWith(fontWeight: FontWeight.w700);

TextStyle regular16 = regular10.copyWith(fontSize: 16);
TextStyle medium16 = regular16.copyWith(fontWeight: FontWeight.w600);
TextStyle bold16 = regular16.copyWith(fontWeight: FontWeight.w700);

TextStyle regular18 = regular10.copyWith(fontSize: 18);
TextStyle medium18 = regular18.copyWith(fontWeight: FontWeight.w600);
TextStyle bold18 = regular18.copyWith(fontWeight: FontWeight.w700);
