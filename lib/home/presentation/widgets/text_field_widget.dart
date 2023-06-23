import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customTextField(String hintText) {
  return Container(
    width: double.infinity,
    height: 56,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFF3F6FF)),
    child: TextFormField(
      style: GoogleFonts.lato(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          fontStyle: FontStyle.italic),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search, color: Color(0xFF79829B), size: 26,),
        contentPadding: const EdgeInsets.only(
          left: 16,
          bottom: 38,
        ),
        isDense: true,
        hintText: hintText,
        hintStyle: GoogleFonts.lato(
            fontWeight: FontWeight.w400, fontSize: 16),
        border: OutlineInputBorder(
          borderSide:
          const BorderSide(color: Color(0xFFAFB5C8)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}