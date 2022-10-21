import 'dart:io';
import 'dart:math' as math;
import 'dart:math';
import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/button.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:page_transition/page_transition.dart';
import 'leavedropdown/leavetype.dart';
import 'leavedropdown/modetype.dart';
import 'leavehistory.dart';

// class LeaveSummary extends StatefulWidget {
//   const LeaveSummary({Key? key}) : super(key: key);
//
//   @override
//   State<LeaveSummary> createState() => _LeaveSummaryState();
// }
//
// class _LeaveSummaryState extends State<LeaveSummary> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: SmallText(
//           text: MyStrings.leaveBalance,
//         ),
//         actions: [
//           InkWell(
//             onTap: () {
//               Navigator.of(context).pushReplacement(
//                   CupertinoPageRoute(builder: (context) => const ApplyLeave()));
//             },
//             child: const Padding(
//               padding: EdgeInsets.only(right: 10.0),
//               child: Icon(Icons.add),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             children: [
//               // Row(
//               //   children: [
//               //     Icon(Icons.account_circle_outlined,color: textGreyColor,),
//               //     widthspace,
//               //     SmallText(
//               //       text: "Faina Josephine",
//               //       size: 16,
//               //       fontWeight: FontWeight.w600,
//               //     ),
//               //   ],
//               // ),
//               // heightspace,
//               // Row(
//               //   children: [
//               //     Icon(Icons.approval,color: textGreyColor,),
//               //     widthspace,
//               //     SmallText(
//               //       text: "AM045",
//               //       size: 16,
//               //       fontWeight: FontWeight.w600,
//               //     ),
//               //   ],
//               // ),
//               // heightspace,
//               // heightspace,
//
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: const Color(0xfffde1e6).withOpacity(0.5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SmallText(
//                         text: MyStrings.casualLeave,
//                         color: Color(0xff9d7178),
//                         fontWeight: FontWeight.w600,
//                         size: 16,
//                       ),
//                       heightspace,
//                       FDottedLine(
//                         color: borderColor.withOpacity(0.2),
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                       heightspace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "7",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.balance,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "3.5",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.taken,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "3.5",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.pending,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               heightspace,
//               heightspace,
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0xffbffbfc).withOpacity(0.5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SmallText(
//                         text: MyStrings.sickLeave,
//                         color: Color(0xff378486),
//                         fontWeight: FontWeight.w600,
//                         size: 16,
//                       ),
//                       heightspace,
//                       FDottedLine(
//                         color: borderColor.withOpacity(0.2),
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                       heightspace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Card(
//                             elevation: 2,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "7",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.balance,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "5",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.taken,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "2",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.pending,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               heightspace,
//               heightspace,
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0xfffcfbd4).withOpacity(0.5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SmallText(
//                         text: MyStrings.privilegeLeave,
//                         color: const Color(0xff8b8a54),
//                         fontWeight: FontWeight.w600,
//                         size: 16,
//                       ),
//                       heightspace,
//                       FDottedLine(
//                         color: borderColor.withOpacity(0.2),
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                       heightspace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "0",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.balance,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: SizedBox(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "0",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.taken,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: SizedBox(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "0",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.pending,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               heightspace,
//               heightspace,
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: const Color(0xffefdcfe).withOpacity(0.5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SmallText(
//                         text: MyStrings.comOff,
//                         color: const Color(0xff7e6494),
//                         fontWeight: FontWeight.w600,
//                         size: 16,
//                       ),
//                       heightspace,
//                       FDottedLine(
//                         color: borderColor.withOpacity(0.2),
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                       heightspace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: SizedBox(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "3",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.balance,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "0",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.taken,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "3",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.pending,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               heightspace,
//               heightspace,
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0xffd2f6e9).withOpacity(0.5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SmallText(
//                         text: MyStrings.marriageLeave,
//                         color: const Color(0xff507466),
//                         fontWeight: FontWeight.w600,
//                         size: 16,
//                       ),
//                       heightspace,
//                       FDottedLine(
//                         color: borderColor.withOpacity(0.2),
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                       heightspace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "20",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.balance,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "20",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.taken,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "0",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.pending,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               heightspace,
//               heightspace,
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0xffc8d8ef).withOpacity(0.5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SmallText(
//                         text: MyStrings.paternityLeave,
//                         color: const Color(0xff36598a),
//                         fontWeight: FontWeight.w600,
//                         size: 16,
//                       ),
//                       heightspace,
//                       FDottedLine(
//                         color: borderColor.withOpacity(0.2),
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                       heightspace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "182",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.balance,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "130",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.taken,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "52",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     const SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.pending,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               heightspace,
//               heightspace,
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: const Color(0xfffbdfb8).withOpacity(0.5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SmallText(
//                         text: MyStrings.medicalLeave,
//                         color: const Color(0xff876f4d),
//                         fontWeight: FontWeight.w600,
//                         size: 16,
//                       ),
//                       heightspace,
//                       FDottedLine(
//                         color: borderColor.withOpacity(0.2),
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                       heightspace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "3",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.balance,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "2",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.taken,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             elevation: 2,
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "1",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.pending,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               heightspace,
//               heightspace,
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0xffc4e1df).withOpacity(0.5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SmallText(
//                         text: MyStrings.bereavementLeave,
//                         color: Color(0xff2f8c86),
//                         fontWeight: FontWeight.w600,
//                         size: 16,
//                       ),
//                       heightspace,
//                       FDottedLine(
//                         color: borderColor.withOpacity(0.2),
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                       heightspace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Card(
//                             elevation: 2,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "0",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.balance,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             elevation: 2,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "0",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.taken,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Card(
//                             elevation: 2,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 4,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   children: [
//                                     SmallText(
//                                       text: "0",
//                                       size: 22,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     SmallText(
//                                       text: MyStrings.pending,
//                                       size: 14,
//                                       color: drawertextColor,
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LeaveSummary extends StatefulWidget {
  @override
  _LeaveSummaryState createState() => _LeaveSummaryState();
}

class _LeaveSummaryState extends State<LeaveSummary> {
  final _selectedColor = Colors.grey.shade200;

  void showMenuSelection(String value) {
    setState(() {
      selectedItem = value.toString();
    });
    print(value);
    Navigator.pushNamed(context, value.toString());
  }

  // radio button

  String radioButtonItem = 'Full day';
  int id = 1;

  var selectedItem = '';

  String? difficulty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: SmallText(
          text: MyStrings.leaveBalance,
        ),
        // actions: [
        //   PopupMenuButton<String>(
        //     shape: const RoundedRectangleBorder(
        //         borderRadius: BorderRadius.all(Radius.circular(15.0))),
        //     icon: const Icon(
        //       Icons.add,
        //       color: Colors.white,
        //       size: 28,
        //     ),
        //     onSelected: showMenuSelection,
        //     itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        //       PopupMenuItem<String>(
        //         value: '/applyleave',
        //         child: Row(
        //           children: [
        //             const Image(
        //               image: AssetImage('assets/sidemenu/applyleave.png'),
        //               width: 25,
        //               height: 25,
        //             ),
        //             widthspace,
        //             SmallText(text: MyStrings.applyLeave)
        //           ],
        //         ),
        //       ),
        //       PopupMenuItem<String>(
        //           value: '/image',
        //           child: Column(
        //             children: [
        //               Row(
        //                 children: [
        //                   const Image(
        //                     image: AssetImage('assets/sidemenu/applyswipe.png'),
        //                     width: 25,
        //                     height: 25,
        //                   ),
        //                   widthspace,
        //                   SmallText(text: MyStrings.applySwipe)
        //                 ],
        //               ),
        //             ],
        //           )),
        //       PopupMenuItem<String>(
        //           child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               const Image(
        //                 image: AssetImage('assets/sidemenu/compo.png'),
        //                 width: 25,
        //                 height: 25,
        //               ),
        //               widthspace,
        //               SmallText(text: MyStrings.applyCom)
        //             ],
        //           ),
        //         ],
        //       )),
        //       PopupMenuItem<String>(
        //           child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               const Image(
        //                 image: AssetImage('assets/sidemenu/od.png'),
        //                 width: 25,
        //                 height: 25,
        //               ),
        //               widthspace,
        //               SmallText(text: MyStrings.od)
        //             ],
        //           ),
        //         ],
        //       )),
        //     ],
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DefaultTabController(
                    length: 3, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          // Container(
                          //   child: const TabBar(
                          //     labelColor: Colors.green,
                          //     unselectedLabelColor: Colors.black,
                          //     tabs: [
                          //       Tab(text: 'Leave Summary'),
                          //       Tab(text: 'Leave Rules'),
                          //       Tab(text: 'Holiday List'),
                          //     ],
                          //   ),
                          // ),
                          Container(
                            height: kToolbarHeight + 10.0,
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 16.0, left: 16.0, bottom: 10),
                            decoration: BoxDecoration(
                              color: _selectedColor,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0)),
                            ),
                            child: TabBar(
                              indicator: BoxDecoration(
                                  // borderRadius: const BorderRadius.only(
                                  //     topLeft: Radius.circular(8.0),
                                  //     topRight: Radius.circular(8.0)),
                                  borderRadius: BorderRadius.circular(8),
                                  color: primaryColor),
                              labelColor: whiteColor,
                              unselectedLabelColor: Colors.black,
                              tabs: const [
                                Tab(text: 'Summary'),
                                Tab(text: 'Holiday List'),
                                Tab(text: 'Rules'),
                              ],
                            ),
                          ),
                          // Container(
                          //   height: kToolbarHeight - 8.0,
                          //   decoration: BoxDecoration(
                          //     color: Colors.grey.shade200,
                          //     borderRadius: BorderRadius.circular(8.0),
                          //   ),
                          //   child: TabBar(
                          //     // controller: _tabController,
                          //     indicator: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(8.0),
                          //         color: _selectedColor),
                          //     labelColor: Colors.white,
                          //     unselectedLabelColor: Colors.black,
                          //     tabs:  const [
                          //       Tab(text: 'Summary'),
                          //       Tab(text: 'Rules'),
                          //       Tab(text: 'Holiday List'),
                          //     ],
                          //   ),
                          // ),

                          // Container(
                          //   height: kToolbarHeight + 8.0,
                          //   padding:
                          //   const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
                          //   decoration: BoxDecoration(
                          //     color: _selectedColor,
                          //     borderRadius: const BorderRadius.only(
                          //         topLeft: Radius.circular(8.0),
                          //         topRight: Radius.circular(8.0)),
                          //   ),
                          //   child:  TabBar(
                          //     // controller: _tabController,
                          //     indicator: BoxDecoration(
                          //         borderRadius: const BorderRadius.only(
                          //             topLeft: Radius.circular(8.0),
                          //             topRight: Radius.circular(8.0)),
                          //         color: primaryColor),
                          //     labelColor: whiteColor,
                          //     unselectedLabelColor: Colors.black,
                          //     tabs: [
                          //           Tab(text: 'Summary'),
                          //           Tab(text: 'Rules'),
                          //           Tab(text: 'Holiday List'),
                          //         ],
                          //   ),
                          // ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height /
                                  1.3, //height of TabBarView
                              // decoration: const BoxDecoration(
                              //     border: Border(
                              //         top: BorderSide(
                              //             color: Colors.grey, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    heightspace,
                                    heightspace,
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          SmallText(
                                            text: MyStrings.leaveSummary,
                                            fontWeight: FontWeight.w400,
                                            size: 17,
                                            color: profiletextColor,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SmallText(
                                              text: "(2021-2022)",
                                              size: 16,
                                              fontWeight: FontWeight.w600),
                                        ],
                                      ),
                                    ),
                                    DataTable(
                                      //border: TableBorder.all(width: 0.3, color:prescriptionDivideColor),
                                      headingRowColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => primaryColor),
                                      headingRowHeight: 50,
                                      showBottomBorder: true,
                                      columnSpacing: 25,
                                      horizontalMargin: 10,
                                      dataRowHeight: 50,
                                      columns: [
                                        DataColumn(
                                            label: Center(
                                                child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: SmallText(
                                            text: "Leave\nType",
                                            color: whiteColor,
                                            size: 14,
                                            textAlign: TextAlign.center,
                                          ),
                                        ))),
                                        DataColumn(
                                            label: SmallText(
                                          text: "Consumed\nDays",
                                          color: whiteColor,
                                          size: 14,
                                          textAlign: TextAlign.center,
                                        )),
                                        DataColumn(
                                            label: SmallText(
                                          text: "Credit\nDays",
                                          color: whiteColor,
                                          size: 14,
                                          textAlign: TextAlign.center,
                                        )),
                                        DataColumn(
                                            label: SmallText(
                                          text: "Available\nBalance",
                                          color: whiteColor,
                                          size: 15,
                                          textAlign: TextAlign.center,
                                        )),
                                      ],
                                      rows: [
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: MyStrings.casualLeave,
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '7',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '3.5',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '3.5',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: MyStrings.sickLeave,
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '7',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '5',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '2',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: MyStrings.privilegeLeave,
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '0',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '0',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '0',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: MyStrings.compensatory,
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '1',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '0',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '1',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: MyStrings.marriageLeave,
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '20',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '20',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '0',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: MyStrings.marriageLeave,
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '20',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '20',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '0',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: MyStrings.paternityLeave,
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '182',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '130',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '52',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: MyStrings.medicalLeave,
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '3',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '2',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '1',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: MyStrings.bereavementLeave,
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '0',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '0',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                            DataCell(Center(
                                                child: SmallText(
                                              text: '0',
                                              size: 14,
                                              color: drawertextColor,
                                            ))),
                                          ],
                                        ),
                                      ],
                                    ),
                                    heightspace,
                                    heightspace,
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                type: PageTransitionType.rightToLeft,
                                                child: const leaveHistory()));
                                      },
                                      child: Center(
                                        child: Button(text: "View All History",),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    heightspace,
                                    heightspace,
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          SmallText(
                                            text: MyStrings.holidayList,
                                            fontWeight: FontWeight.w400,
                                            size: 17,
                                            color: profiletextColor,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SmallText(
                                              text: "(2021-2022)",
                                              size: 16,
                                              fontWeight: FontWeight.w600),
                                        ],
                                      ),
                                    ),
                                    DataTable(
                                      //border: TableBorder.all(width: 0.3, color:prescriptionDivideColor),
                                      headingRowColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => primaryColor),
                                      headingRowHeight: 50,
                                      showBottomBorder: true,
                                      columnSpacing: 65,
                                      horizontalMargin: 10,
                                      dataRowHeight: 50,
                                      columns: [
                                        DataColumn(
                                            label: Center(
                                                child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: SmallText(
                                            text: "Date",
                                            color: whiteColor,
                                            size: 14,
                                            textAlign: TextAlign.center,
                                          ),
                                        ))),
                                        DataColumn(
                                            label: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: SmallText(
                                            text: "Day",
                                            color: whiteColor,
                                            size: 14,
                                            textAlign: TextAlign.center,
                                          ),
                                        )),
                                        DataColumn(
                                            label: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: SmallText(
                                            text: "Remarks",
                                            color: whiteColor,
                                            size: 14,
                                            textAlign: TextAlign.center,
                                          ),
                                        )),
                                      ],
                                      rows: [
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: "01-Jan-22",
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Saturday',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'New Years Day',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: "14-Jan-22",
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Friday',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Pongal',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: "26-Jan-22",
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Wednesday',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Republic Day',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: "14-Apr-22",
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Thursday',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Tamil New Year Day',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: "15-Aug-22",
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Monday',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Independence Day',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: "31-Aug-22",
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Wednesday',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Vinayakar Chathurthi',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: "04-Oct-22",
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Tuesday',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Vijayadhasami',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: "24-Oct-22",
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Monday',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Deepavali',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                          ],
                                        ),
                                        DataRow(
                                          cells: <DataCell>[
                                            DataCell(SmallText(
                                              text: "25-Nov-22",
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Friday',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                            DataCell(SmallText(
                                              text: 'Thanks Giving Day',
                                              size: 14,
                                              color: drawertextColor,
                                            )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    heightspace,
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Card(
                                            elevation: 1,
                                            color: Color(0xffeefcfd),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SmallText(
                                                      text:
                                                          MyStrings.leaveRules,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      size: 17,
                                                      color: profiletextColor,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    SmallText(
                                                      text:
                                                          "Process data is not considered while showing Leave balances.",
                                                      size: 13,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          heightspace,
                                          heightspace,
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0),
                                            child: Column(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color:
                                                                  primaryColor),
                                                          width: 12.0,
                                                          height: 12.0,
                                                        ),
                                                        widthspace,
                                                        SmallText(
                                                          text:
                                                              "Leave Rules for CL : ( CL ) Desc : Casual Leave",
                                                          size: 15,
                                                          color:
                                                              profiletextColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 22.0),
                                                      child: SmallText(
                                                        text:
                                                            "You can apply CL for 50 Future days.",
                                                        size: 14,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                heightspace,
                                                heightspace,
                                                FDottedLine(
                                                  color: borderColor,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                ),
                                                heightspace,
                                                heightspace,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color:
                                                                  primaryColor),
                                                          width: 12.0,
                                                          height: 12.0,
                                                        ),
                                                        widthspace,
                                                        SmallText(
                                                          text:
                                                              "Leave Rules for SL : ( SL ) Desc : Sick Leave",
                                                          size: 15,
                                                          color:
                                                              profiletextColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 22.0),
                                                      child: SmallText(
                                                        text:
                                                            "You can apply SL for 50 Future days.",
                                                        size: 14,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                heightspace,
                                                heightspace,
                                                FDottedLine(
                                                  color: borderColor,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                ),
                                                heightspace,
                                                heightspace,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  bottom: 18.0),
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color:
                                                                    primaryColor),
                                                            width: 12.0,
                                                            height: 12.0,
                                                          ),
                                                        ),
                                                        widthspace,
                                                        Expanded(
                                                            child: SmallText(
                                                          text:
                                                              "Leave Rules for CO+ : ( CO+ ) Desc : Comp. Leave Accrued",
                                                          size: 15,
                                                          color:
                                                              profiletextColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.3,
                                                        )),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 22.0),
                                                      child: SmallText(
                                                        text:
                                                            "CO+ can be applied for following day types : PHP, PH, WO, WOP, WOPH.",
                                                        size: 14,
                                                        height: 1.3,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                heightspace,
                                                heightspace,
                                                FDottedLine(
                                                  color: borderColor,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                ),
                                                heightspace,
                                                heightspace,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  bottom: 18.0),
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color:
                                                                    primaryColor),
                                                            width: 12.0,
                                                            height: 12.0,
                                                          ),
                                                        ),
                                                        widthspace,
                                                        Expanded(
                                                            child: SmallText(
                                                          text:
                                                              "Leave Rules for CO- : ( CO- ) Desc : Comp. Leave Enjoy",
                                                          size: 15,
                                                          color:
                                                              profiletextColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.3,
                                                        )),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 22.0),
                                                      child: SmallText(
                                                          text:
                                                              "You can apply CO- for 50 Future days.",
                                                          size: 14),
                                                    )
                                                  ],
                                                ),
                                                heightspace,
                                                heightspace,
                                                FDottedLine(
                                                  color: borderColor,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                ),
                                                heightspace,
                                                heightspace,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  bottom: 18.0),
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color:
                                                                    primaryColor),
                                                            width: 12.0,
                                                            height: 12.0,
                                                          ),
                                                        ),
                                                        widthspace,
                                                        Expanded(
                                                            child: SmallText(
                                                          text:
                                                              "Leave Rules for L1 : ( ML ) Desc : Marriage Leave",
                                                          size: 15,
                                                          color:
                                                              profiletextColor,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.3,
                                                        )),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 22.0),
                                                      child: SmallText(
                                                          text:
                                                              "You can apply L1 for 30 Future days.",
                                                          size: 14),
                                                    )
                                                  ],
                                                ),
                                                heightspace,
                                                heightspace,
                                                FDottedLine(
                                                  color: borderColor,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                ),
                                                heightspace,
                                                heightspace,
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ]))
                        ])),
              ]),
        ),
      ),
      floatingActionButton: ExpandableFab(
        initialOpen: false,
        distance: 75.0,
        children: [
          ActionButton(
            onPressed: ()=> _applyCompoff(),
             icon: const Image(
              image: AssetImage('assets/sidemenu/compo.png'),
              width: 25,
              height: 25,
            ),
          ),
          ActionButton(
            onPressed: ()=>_applySwipe(context),
            icon: const Image(
              image: AssetImage('assets/sidemenu/applyswipe.png'),
              width: 25,
              height: 25,
            ),
          ),
          ActionButton(
            onPressed: () => _applyLeave(),
            icon: const Image(
              image: AssetImage('assets/sidemenu/applyleave.png'),
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }

  void _applyLeave() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height/1.28 ,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: whiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: SmallText(
                    text: MyStrings.requestLeave,
                    size: 18,
                    fontWeight: FontWeight.w600,
                  )),
                  heightspace,
                  heightspace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallText(
                        text: MyStrings.applyDate,
                        color: textGreyColor,
                        size: 16,
                      ),
                      Text(DateFormat("dd/MM/yyyy").format(DateTime.now()))
                    ],
                  ),
                  heightspace,
                  StatefulBuilder(
                      builder: (context, StateSetter setModalState) {
                    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                  fillColor: MaterialStateColor.resolveWith(
                                          (states) => primaryColor),
                                  value: 1,
                                  groupValue: id,
                                  onChanged: (value) {
                                    // set is changed here
                                    setModalState(() {
                                      difficulty = value.toString();
                                      id=1;
                                    });
                                  }),
                              SmallText(text: MyStrings.fullDay,size: 15,)

                            ],
                          ),
                          Row(
                            children: [

                              Radio(
                                  fillColor: MaterialStateColor.resolveWith(
                                          (states) => primaryColor),
                                  value: 2,
                                  groupValue: id,
                                  onChanged: (value) {
                                    // set is changed here
                                    setModalState(() {
                                      difficulty = value.toString();
                                      id=2;
                                    });
                                  }),
                              SmallText(text: MyStrings.firstHalf,size: 15,)

                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  fillColor: MaterialStateColor.resolveWith(
                                          (states) => primaryColor),
                                  value:3,
                                  groupValue: id,
                                  onChanged: (value) {
                                    // set is changed here
                                    setModalState(() {
                                      difficulty = value.toString();
                                      id=3;
                                    });
                                  }),
                              SmallText(text: MyStrings.secondHalf,size: 15,)
                            ],
                          )
                        ]);
                  }),
                  heightspace,
                  const DropDownBox(),
                  heightspace,
                  heightspace,
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(text: MyStrings.fromDate,color: textGreyColor,
                            size: 16,),
                          heightspace,
                          startDate(),
                        ],
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(text: MyStrings.toDate,color: textGreyColor,
                            size: 16,),
                          heightspace,
                          finishDate(),
                        ],
                      ),
                    ],
                  ),
                  heightspace,
                  heightspace,
                  SmallText(
                    text: MyStrings.reason,
                    color: textGreyColor,
                    size: 16,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: borderColor),
                      ),
                    ),
                  ),
                  heightspace,
                  heightspace,
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        text: MyStrings.attachFile,
                        color: textGreyColor,
                        size: 16,
                      ),
                      heightspace,
                      Uploadfile(),
                      heightspace,
                      heightspace,
                    ],
                  ),
                  Center(child: Button(text: MyStrings.applyLeave,))
                ],
              ),
            ),
          );
        });
  }
  TextEditingController _txtTimeController = TextEditingController();

  final MaskTextInputFormatter timeMaskFormatter =
  MaskTextInputFormatter(mask: '##:##', filter: {"#": RegExp(r'[0-9]')});
  void _applySwipe(BuildContext context) {


    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext bc) {
          return
            StatefulBuilder(
                builder: (BuildContext context, StateSetter state) {
                  return  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      height: MediaQuery.of(context).size.height/1.7 ,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: SmallText(
                                  text: MyStrings.requestSwipe,
                                  size: 18,
                                  fontWeight: FontWeight.w600,
                                )),
                            heightspace,
                            heightspace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SmallText(
                                  text: MyStrings.applyDate,
                                  color: textGreyColor,
                                  size: 16,
                                ),
                                Text(DateFormat("dd/MM/yyyy").format(DateTime.now()))
                              ],
                            ),
                            heightspace,
                            heightspace,
                            Modedropdown(),
                            heightspace,
                            heightspace,
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SmallText(text: MyStrings.fromDate,color: textGreyColor,
                                      size: 16,),
                                    heightspace,
                                    requestDate(),
                                  ],
                                ),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SmallText(text: MyStrings.mode,color: textGreyColor,
                                      size: 16,),
                                    heightspace,
                                    createBox(context,state,)
                                  ],
                                ),
                              ],
                            ),
                            heightspace,
                            heightspace,
                            type == "In" ?Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SmallText(text: "In Time", color: textGreyColor,
                                  size: 16,),
                                SizedBox(
                                  height:40,
                                  width: MediaQuery.of(context).size.width/2.5,
                                  child: TextFormField(
                                    controller: _txtTimeController,
                                    textAlign: TextAlign.justify,
                                    keyboardType: TextInputType.numberWithOptions(decimal: false),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 12.0,left: 10,right: 5),
                                      hintText: '00:00',
                                      border: const OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1, color: borderColor),
                                      ),
                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 5),
                                        child: SmallText(text: "AM",),
                                      )
                                    ),
                                    inputFormatters: <TextInputFormatter>[
                                      timeMaskFormatter
                                      // Not sure if it can be done with RegExp or a custom class here instead
                                    ],
                                  ),
                                ),
                              ],
                            ):
                            type == "Out" ?Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SmallText(text: "Out Time", color: textGreyColor,
                                  size: 16,),
                                SizedBox(
                                  height:40,
                                  width: MediaQuery.of(context).size.width/2.5,
                                  child: TextFormField(
                                    controller: _txtTimeController,
                                    textAlign: TextAlign.justify,
                                    keyboardType: TextInputType.numberWithOptions(decimal: false),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 12.0,left: 10,right: 5),
                                      hintText: '00:00',
                                      border: const OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1, color: borderColor),
                                      ),
                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 5),
                                        child: SmallText(text: "PM",),
                                      )
                                    ),
                                    inputFormatters: <TextInputFormatter>[
                                      timeMaskFormatter
                                      // Not sure if it can be done with RegExp or a custom class here instead
                                    ],
                                  ),
                                ),
                              ],
                            ): type == "Both" ?Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SmallText(text: "In Time", color: textGreyColor,
                                    size: 16,),
                                  SizedBox(
                                    height:40,
                                    width: MediaQuery.of(context).size.width/2.5,
                                    child: TextFormField(
                                      controller: _txtTimeController,
                                      textAlign: TextAlign.justify,
                                      keyboardType: TextInputType.numberWithOptions(decimal: false),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(top: 20.0,left: 10,right: 5),
                                          hintText: '00:00',
                                          border: const OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 1, color: borderColor),
                                          ),
                                          suffixIcon: Padding(
                                            padding: const EdgeInsets.only(top: 10.0,left: 5),
                                            child: SmallText(text: "AM",),
                                          )
                                      ),
                                      inputFormatters: <TextInputFormatter>[
                                        timeMaskFormatter
                                        // Not sure if it can be done with RegExp or a custom class here instead
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SmallText(text: "Out Time", color: textGreyColor,
                                    size: 16,),
                                  heightspace,
                                  SizedBox(
                                    height:40,
                                    width: MediaQuery.of(context).size.width/2.5,
                                    child: TextFormField(
                                      controller: _txtTimeController,
                                      textAlign: TextAlign.justify,
                                      keyboardType: TextInputType.numberWithOptions(decimal: false),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(top: 20.0,left: 10,right: 5),
                                          hintText: '00:00',
                                          border: const OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(width: 1, color: borderColor),
                                          ),
                                          suffixIcon: Padding(
                                            padding: const EdgeInsets.only(top: 10.0,left: 5),
                                            child: SmallText(text: "PM",),
                                          )
                                      ),
                                      inputFormatters: <TextInputFormatter>[
                                        timeMaskFormatter
                                        // Not sure if it can be done with RegExp or a custom class here instead
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                            ):SizedBox(),
                            heightspace,
                            heightspace,

                            SmallText(
                              text: MyStrings.reason,
                              color: textGreyColor,
                              size: 16,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              child: TextField(
                                maxLines: 3,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: borderColor),
                                  ),
                                ),
                              ),
                            ),
                            heightspace,
                            heightspace,
                            Center(child: Button(text: MyStrings.request,))
                          ],
                        ),
                      ),
                    ),
                  );
                });

        });
  }


  void _applyCompoff() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height/1.7 ,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: whiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: SmallText(
                        text: MyStrings.compOff,
                        size: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  heightspace,
                  heightspace,
                  StatefulBuilder(
                      builder: (context, StateSetter setModalState) {
                        return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      fillColor: MaterialStateColor.resolveWith(
                                              (states) => primaryColor),
                                      value: 1,
                                      groupValue: id,
                                      onChanged: (value) {
                                        // set is changed here
                                        setModalState(() {
                                          difficulty = value.toString();
                                          id=1;
                                        });
                                      }),
                                  SmallText(text: MyStrings.fullDay,size: 15,)

                                ],
                              ),
                              Row(
                                children: [

                                  Radio(
                                      fillColor: MaterialStateColor.resolveWith(
                                              (states) => primaryColor),
                                      value: 2,
                                      groupValue: id,
                                      onChanged: (value) {
                                        // set is changed here
                                        setModalState(() {
                                          difficulty = value.toString();
                                          id=2;
                                        });
                                      }),
                                  SmallText(text: MyStrings.firstHalf,size: 15,)

                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      fillColor: MaterialStateColor.resolveWith(
                                              (states) => primaryColor),
                                      value:3,
                                      groupValue: id,
                                      onChanged: (value) {
                                        // set is changed here
                                        setModalState(() {
                                          difficulty = value.toString();
                                          id=3;
                                        });
                                      }),
                                  SmallText(text: MyStrings.secondHalf,size: 15,)
                                ],
                              )
                            ]);
                      }),
                  heightspace,
                  const DropDownBox(),
                  heightspace,
                  heightspace,
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(text: MyStrings.fromDate,color: textGreyColor,
                            size: 16,),
                          heightspace,
                          startDate(),
                        ],
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(text: MyStrings.toDate,color: textGreyColor,
                            size: 16,),
                          heightspace,
                          finishDate(),
                        ],
                      ),
                    ],
                  ),
                  heightspace,
                  heightspace,
                  SmallText(
                    text: MyStrings.reason,
                    color: textGreyColor,
                    size: 16,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: borderColor),
                      ),
                    ),
                  ),
                  heightspace,
                  heightspace,

                  Center(child: Button(text: MyStrings.applyLeave,))
                ],
              ),
            ),
          );
        });
  }

  createBox(BuildContext context, StateSetter state) {
    return SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width/2.5,
            height: 40.0,
            padding: const EdgeInsets.only(left: 10.0),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: borderColor),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            child: buildMainDropdown(state))
    );

  }
  String? type;
  int? optionId;

   buildMainDropdown(StateSetter setState) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: type,
        hint: Text("Select a type"),
        items: <String>[
          MyStrings.inTime,
          MyStrings.out,
          MyStrings.both,
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: SmallText(text: value),
          );
        }).toList(),
        onChanged: (newType) {
          setState(() {
            type = newType as String?;
          });
        },
      ),
    );
  }



}

@immutable

class Uploadfile extends StatefulWidget {
  const Uploadfile({Key? key}) : super(key: key);

  @override
  State<Uploadfile> createState() => _UploadfileState();
}

class _UploadfileState extends State<Uploadfile> {


  List<dynamic> imageList = [];

  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 / 2,
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        itemCount: imageList.length + 1,
        primary: false,
        // physics: NeverScrollableScrollPhysFics(),
        // controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        itemBuilder: (BuildContext ctx, index) {
          final item = index + 1 == imageList.length + 1
              ? null
              : imageList[index];
          return index + 1 == imageList.length + 1
              ? (imageList.length > 2)
              ? Container()
              : InkWell(
            onTap: _uploadImageModalBottomSheet,
            child: Container(
              decoration: BoxDecoration(
                color: containerGreyColor,
              ),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add),
                  const SizedBox(
                    height: 5,
                  ),
                  SmallText(
                    text: MyStrings.uploadFile,size: 12,)
                ],
              ),
            ),
          )
              : Stack(
            children: [
              Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor,
                      width: 2,
                    )),
                child: Image.file(
                  item,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    deleteImageDialogue(index);
                  },
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  void _uploadImageModalBottomSheet() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext bc) {
          double width = MediaQuery.of(context).size.width;
          return Container(
            color: Colors.white,
            margin: EdgeInsets.all(fixPadding),
            child: Wrap(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: SmallText(
                                text: MyStrings.uploadFile,
                              )),
                          IconButton(
                            icon: Icon(Icons.close, color: primaryColor),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                          color: scaffoldBgColor,
                          borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(10.0)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: fixPadding * 2.0,
                                  bottom: fixPadding * 2.0,
                                  left: fixPadding * 4.0,
                                  right: fixPadding * 4.0),
                              color: Colors.grey[200],
                              child: Container(
                                height: 50.0,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.8,
                                      color: Colors.grey.withOpacity(0.6)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                    getCameraImage();
                                  },
                                  child: Container(
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            decoration: const BoxDecoration(
                                                color: Color(0xffcefdff),
                                                shape: BoxShape.circle),
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.camera_alt,
                                                color: primaryColor,
                                                size: 20,
                                              ),
                                            )),
                                        widthspace,
                                        SmallText(text: MyStrings.camera)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  bottom: fixPadding * 2.0,
                                  left: fixPadding * 4.0,
                                  right: fixPadding * 4.0),
                              color: Colors.grey[200],
                              child: Container(
                                height: 50.0,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.8,
                                      color: Colors.grey.withOpacity(0.6)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                    getGalleryImage();
                                  },
                                  child: Container(
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            decoration: const BoxDecoration(
                                                color: Color(0xffcefdff),
                                                shape: BoxShape.circle),
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.photo_library,
                                                color: primaryColor,
                                                size: 20,
                                              ),
                                            )),
                                        widthspace,
                                        SmallText(text: MyStrings.gallery)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  deleteImageDialogue(index) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return Dialog(
          elevation: 0.0,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            height: MediaQuery.of(context).size.height / 4.5,
            padding:
            EdgeInsets.only(left: 20.0, top: 10, bottom: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Are you sure  you want to delete this image?",
                    style: font16.copyWith(fontWeight: FontWeight.w400)),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.width / 3.5),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          MyStrings.no,
                          style: font16.copyWith(
                              color: primaryColor, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          imageList.removeAt(index);
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.width / 3.5),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: SmallText(
                          text: MyStrings.yes,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  final picker = ImagePicker();
  File? _image;

  Future getCameraImage() async {
    final pickedFile =
    await picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      var getFileSize = getFileSizeString(bytes: _image!.lengthSync());
      if ((getFileSize.contains('kb'))) {
      } else if (getFileSize.contains('mb')) {
        if (getFileSize.length >= 2) {
          getFileSize = getFileSize.substring(0, getFileSize.length - 2);
        }
        int fileSize = int.parse(getFileSize);
        if (fileSize > 2) {
          // Fluttertoast.showToast(msg: MyStrings.FILE_SIZE_VALIDATE_TXT);
          return;
        }
      } else {
        return;
      }
      setState(() {
        imageList.add(_image);
        if (imageList.length > 0) {
          // submitBtnText = "Upload & Continue";
        }
        // uploadPrescriptionImageDialogue();
      });
    } else {
      setState(() {
        _image = null;
        if (imageList.length > 0) {
          // submitBtnText = "Upload & Continue";
        }
      });
    }
  }

  Future getGalleryImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      _image = File(result.files.single.path!);
      var getFileSize = getFileSizeString(bytes: _image!.lengthSync());
      if ((getFileSize.contains('kb'))) {
      } else if (getFileSize.contains('mb')) {
        if (getFileSize.length >= 2) {
          getFileSize = getFileSize.substring(0, getFileSize.length - 2);
        }
        int fileSize = int.parse(getFileSize);
        if (fileSize > 2) {
          // Fluttertoast.showToast(msg: MyStrings.FILE_SIZE_VALIDATE_TXT);
          return;
        }
      } else {
        return;
      }
      setState(() {
        imageList.add(_image);
        if (imageList.length > 0) {
          // submitBtnText = "Upload & Continue";
        }
        // uploadPrescriptionImageDialogue();
      });
    } else {
      // User canceled the picker
    }
  }

  // Format File Size
  static String getFileSizeString({required int bytes, int decimals = 0}) {
    const suffixes = ["b", "kb", "mb", "gb", "tb"];
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + suffixes[i];
  }
}


@immutable

class startDate extends StatefulWidget {
  const startDate({Key? key}) : super(key: key);

  @override
  State<startDate> createState() => _startDateState();
}

class _startDateState extends State<startDate> {

  DateTime selectedDate = new DateTime.now();
  DateTime time = new DateTime.now();
  late DateTime selectedfromDate;
  TextEditingController? fromdate;
  final formKey = GlobalKey<FormState>();

  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();
    var formatter = new DateFormat('dd/MM/yyyy');
    String formatted = formatter.format(selectedDate);
    fromdate?.value = TextEditingValue(text: formatted.toString());
  }

  void initUser() {
    fromdate = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        selectDate1(context);
      },
      child: Form(
        key: formKey,
        child: AbsorbPointer(
          child: Container(
            height: 45,
            width: MediaQuery.of(context).size.width/2.5,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              style: font15,
              controller: fromdate,
              readOnly: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.calendar_today_sharp,
                    size: 18,
                  ),
                  onPressed: () => selectDate1(context),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  Future<void> selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010, 1),
      lastDate: DateTime(2070, 1),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryColor, // <-- SEE HERE
              onPrimary: whiteColor, // <-- SEE HERE
              onSurface: blackColor, // <-- SEE HERE
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: primaryColor, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null)
      setState(() {
        selectedDate = picked;
        selectedfromDate = picked;
        var formatter = new DateFormat('dd/MM/yyyy');
        String formatted = formatter.format(selectedDate);
        fromdate?.value = TextEditingValue(text: formatted.toString());
      });
  }
}


@immutable

class requestDate extends StatefulWidget {
  const requestDate({Key? key}) : super(key: key);

  @override
  State<requestDate> createState() => _requestDateState();
}

class _requestDateState extends State<requestDate> {

  DateTime selectedDate =  DateTime.now();
  DateTime time = DateTime.now();
  late DateTime selectedfromDate;
  TextEditingController? fromdate;
  final formKey = GlobalKey<FormState>();

  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();
    var formatter = new DateFormat('dd/MM/yyyy');
    String formatted = formatter.format(selectedDate);
    fromdate?.value = TextEditingValue(text: formatted.toString());
  }

  void initUser() {
    fromdate = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        selectDate1(context);
      },
      child: Form(
        key: formKey,
        child: AbsorbPointer(
          child: Container(
            height: 45,
            width: MediaQuery.of(context).size.width/2.5,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              style: font15,
              controller: fromdate,
              readOnly: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.calendar_today_sharp,
                    size: 18,
                  ),
                  onPressed: () => selectDate1(context),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  Future<void> selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010, 1),
      lastDate: DateTime(2070, 1),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryColor, // <-- SEE HERE
              onPrimary: whiteColor, // <-- SEE HERE
              onSurface: blackColor, // <-- SEE HERE
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: primaryColor, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null)
      setState(() {
        selectedDate = picked;
        selectedfromDate = picked;
        var formatter = new DateFormat('dd/MM/yyyy');
        String formatted = formatter.format(selectedDate);
        fromdate?.value = TextEditingValue(text: formatted.toString());
      });
  }
}

@immutable

class finishDate extends StatefulWidget {
  const finishDate({Key? key}) : super(key: key);

  @override
  State<finishDate> createState() => _finishDateState();
}

class _finishDateState extends State<finishDate> {

  DateTime selectedendDate =  DateTime.now();
  DateTime time =  DateTime.now();
  late DateTime selectedendleaveDate;
  TextEditingController? enddate;
  final formKey1 = GlobalKey<FormState>();

  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();
    var formatter = new DateFormat('dd/MM/yyyy');
    String formatted = formatter.format(selectedendDate);
    enddate?.value = TextEditingValue(text: formatted.toString());
  }

  void initUser() {
    enddate = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        selectendDate1(context);
      },
      child: Form(
        key: formKey1,
        child: AbsorbPointer(
          child: Container(
            height: 45,
            width: MediaQuery.of(context).size.width/2.1,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              style: font15,
              controller: enddate,
              readOnly: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.calendar_today_sharp,
                    size: 18,
                  ),
                  onPressed: () => selectendDate1(context),
                ),
              ),
            ),
          ),
        ),
      ),
    );

  }

  Future<void> selectendDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedendDate,
      firstDate: DateTime(2010, 1),
      lastDate: DateTime(2070, 1),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryColor, // <-- SEE HERE
              onPrimary: whiteColor, // <-- SEE HERE
              onSurface: blackColor, // <-- SEE HERE
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: primaryColor, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        selectedendDate = picked;
        selectedendleaveDate = picked;
        var formatter = new DateFormat('dd/MM/yyyy');
        String formatted = formatter.format(selectedendDate);
        enddate?.value = TextEditingValue(text: formatted.toString());
      });
    }
  }
}


@immutable
class ExpandableFab extends StatefulWidget {
  const ExpandableFab({
    this.initialOpen,
    this.distance,
    this.children,
    key,
  });

  final bool? initialOpen;
  final double? distance;
  final List<Widget>? children;

  @override
  State<ExpandableFab> createState() => _ExpandableFabState();
}

class _ExpandableFabState extends State<ExpandableFab>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _expandAnimation;
  bool _open = false;

  @override
  void initState() {
    super.initState();
    _open = widget.initialOpen ?? false;
    _controller = AnimationController(
      value: _open ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.easeOutQuad,
      parent: _controller!,
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _open = !_open;
      if (_open) {
        _controller!.forward();
      } else {
        _controller!.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        alignment: Alignment.bottomRight,
        clipBehavior: Clip.none,
        children: [
          _buildTapToCloseFab(),
          ..._buildExpandingActionButtons(),
          _buildTapToOpenFab(),
        ],
      ),
    );
  }

  Widget _buildTapToCloseFab() {
    return SizedBox(
      width: 56.0,
      height: 56.0,
      child: Center(
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          elevation: 4.0,
          child: InkWell(
            onTap: _toggle,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.close,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildExpandingActionButtons() {
    final children = <Widget>[];
    final count = widget.children!.length;
    final step = 90.0 / (count - 1);
    for (var i = 0, angleInDegrees = 0.0;
        i < count;
        i++, angleInDegrees += step) {
      children.add(
        _ExpandingActionButton(
          directionInDegrees: angleInDegrees,
          maxDistance: widget.distance,
          progress: _expandAnimation,
          child: widget.children![i],
        ),
      );
    }
    return children;
  }

  Widget _buildTapToOpenFab() {
    return IgnorePointer(
      ignoring: _open,
      child: AnimatedContainer(
        transformAlignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          _open ? 0.7 : 0.8,
          _open ? 0.7 : 0.8,
          1.0,
        ),
        duration: const Duration(milliseconds: 250),
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
        child: AnimatedOpacity(
          opacity: _open ? 0.0 : 1.0,
          curve: const Interval(0.25, 1.0, curve: Curves.easeInOut),
          duration: const Duration(milliseconds: 250),
          child: FloatingActionButton(
            onPressed: _toggle,
            backgroundColor: primaryColor,
            child: const Icon(
              Icons.add,
              size: 35,
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class _ExpandingActionButton extends StatelessWidget {
  const _ExpandingActionButton({
    this.directionInDegrees,
    this.maxDistance,
    this.progress,
    this.child,
  });

  final double? directionInDegrees;
  final double? maxDistance;
  final Animation<double>? progress;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: progress!,
      builder: (context, child) {
        final offset = Offset.fromDirection(
          directionInDegrees! * (math.pi / 180.0),
          progress!.value * maxDistance!,
        );
        return Positioned(
          right: 4.0 + offset.dx,
          bottom: 4.0 + offset.dy,
          child: Transform.rotate(
            angle: (1.0 - progress!.value) * math.pi / 2,
            child: child,
          ),
        );
      },
      child: FadeTransition(
        opacity: progress!,
        child: child,
      ),
    );
  }
}

@immutable
class ActionButton extends StatelessWidget {
  const ActionButton({
    this.onPressed,
    this.icon,
  });

  final VoidCallback? onPressed;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: whiteColor,
      elevation: 4.0,
      child: IconButton(
        onPressed: onPressed,
        icon: icon!,
      ),
    );
  }
}
