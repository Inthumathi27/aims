import 'dart:io';
import 'dart:math';

import 'package:aims/utils/constant.dart';
import 'package:aims/utils/strings.dart';
import 'package:aims/widgets/button.dart';
import 'package:aims/widgets/smalltext.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({Key? key}) : super(key: key);

  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  String? _chosenValue;
  String? _chosenHalf;
  String? _chosensecondHalf;
  String radioButtonItem = 'One day';
  int id = 1;
  List<bool>? isSelected;
  List<bool>? isSelected1;

  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();
    var formatter = new DateFormat('dd/MM/yyyy');
    String formatted = formatter.format(selectedDate);
    fromdate?.value = TextEditingValue(text: formatted.toString());
    isSelected = [true, false];
    isSelected1 = [true, false];
  }

  void initUser() {
    fromdate = TextEditingController();
    enddate = TextEditingController();
  }

  List<dynamic> imageList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: SmallText(
            text: MyStrings.requestLeave,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              // SmallText(text: MyStrings.type,color: textGreyColor,size: 16,),
              // heightspace,
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40.0,
                padding: const EdgeInsets.all(0.0),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: borderColor),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  ),
                  color: bgColor,
                ),
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(10),
                      value: _chosenValue,
                      underline: SizedBox(),
                      isExpanded: true,
                      style:
                          font15.copyWith(color: Colors.black.withOpacity(0.7)),
                      items: <String>[
                        MyStrings.casualLeave,
                        MyStrings.sickLeave,
                        MyStrings.privilegeLeave,
                        MyStrings.compensatory,
                        MyStrings.marriageLeave,
                        MyStrings.paternityLeave,
                        MyStrings.medicalLeave,
                        MyStrings.bereavementLeave
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: SmallText(text: value),
                        );
                      }).toList(),
                      hint: SmallText(
                        text: MyStrings.leaveType,
                        color: drawertextColor,
                        size: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _chosenValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              heightspace,
              _chosenValue==MyStrings.medicalLeave || _chosenValue== MyStrings.marriageLeave?SizedBox():Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      _chosenValue==MyStrings.medicalLeave?
                      null:    setState(() {
                        radioButtonItem = 'One day';
                        id = 1;
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => primaryColor),

                          value: 1,
                          groupValue: id,
                          onChanged: (val) {
                         setState(() {
                              radioButtonItem = 'One day';
                              id = 1;
                            });
                          },
                        ),
                        Text(
                          'One day',
                          style:  TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        radioButtonItem = 'Multiple days';
                        id = 2;
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => primaryColor),
                          value: 2,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'Multiple days';
                              id = 2;
                            });
                          },
                        ),
                        Text(
                          'Multiple days',
                          style: new TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              heightspace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SmallText(
                    text: MyStrings.date,
                    color: textGreyColor,
                    size: 16,
                  ),
                  buildDate(),
                ],
              ),
              heightspace,
              heightspace,
              ToggleButtons(
                borderColor: primaryColor,
                fillColor: primaryColor,
                borderWidth: 1,
                selectedBorderColor: primaryColor,
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(5),
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: Center(
                        child: SmallText(
                      text: "Full day",
                    )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.15,
                    child: Center(
                        child: SmallText(
                      text: "Half day",
                    )),
                  ),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < isSelected!.length; i++) {
                      isSelected![i] = i == index;
                    }
                  });
                },
                isSelected: isSelected!,
              ),
              isSelected![1] ?
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(text: MyStrings.forSession, color: textGreyColor,
                      size: 16,),
                    Container(
                      width: MediaQuery.of(context).size.width/2.1,
                      height: 35.0,
                      padding: const EdgeInsets.all(0.0),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.0, color: borderColor),
                          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        ),
                        color: bgColor,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            borderRadius: BorderRadius.circular(10),
                            value: _chosenHalf,
                            underline: SizedBox(),
                            isExpanded: true,
                            style:
                            font15.copyWith(color: Colors.black.withOpacity(0.7)),
                            items: <String>[
                              MyStrings.firstHalf,
                              MyStrings.secondHalf,
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: SmallText(text: value),
                              );
                            }).toList(),
                            hint: SmallText(
                              text: MyStrings.half,
                              color: drawertextColor,
                              size: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenHalf = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ): SizedBox(),
              heightspace,
              heightspace,
              id ==2 || _chosenValue==MyStrings.marriageLeave|| _chosenValue==MyStrings.medicalLeave?Column(
                children: [
                  isSelected![1] ?heightspace:SizedBox(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallText(
                        text: MyStrings.date,
                        color: textGreyColor,
                        size: 16,
                      ),
                      buildDate1(),
                    ],
                  ),
                  heightspace,
                  heightspace,
                  ToggleButtons(
                    borderColor: primaryColor,
                    fillColor: primaryColor,
                    borderWidth: 1,
                    selectedBorderColor: primaryColor,
                    selectedColor: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: Center(
                            child: SmallText(
                              text: "Full day",
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.15,
                        child: Center(
                            child: SmallText(
                              text: "Half day",
                            )),
                      ),
                    ],
                    onPressed: (int index) {
                      setState(() {
                        for (int i = 0; i < isSelected1!.length; i++) {
                          isSelected1![i] = i == index;
                        }
                      });
                    },
                    isSelected: isSelected1!,
                  ),
                  heightspace,
                  heightspace,
                  isSelected1![1] ?
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallText(text: MyStrings.forSession, color: textGreyColor,
                          size: 16,),
                        Container(
                          width: MediaQuery.of(context).size.width/2.1,
                          height: 35.0,
                          padding: const EdgeInsets.all(0.0),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1.0, color: borderColor),
                              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                            ),
                            color: bgColor,
                          ),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton<String>(
                                borderRadius: BorderRadius.circular(10),
                                value: _chosensecondHalf,
                                underline: SizedBox(),
                                isExpanded: true,
                                style:
                                font15.copyWith(color: Colors.black.withOpacity(0.7)),
                                items: <String>[
                                  MyStrings.firstHalf,
                                  MyStrings.secondHalf,
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: SmallText(text: value),
                                  );
                                }).toList(),
                                hint: SmallText(
                                  text: MyStrings.half,
                                  color: drawertextColor,
                                  size: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    _chosensecondHalf = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ): SizedBox(),
                ],
              ):SizedBox(),
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
              heightspace,
              _chosenValue == MyStrings.medicalLeave ||
                      _chosenValue == MyStrings.marriageLeave || _chosenValue ==MyStrings.sickLeave
                  ? Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallText(
                          text: MyStrings.attachFile,
                          color: textGreyColor,
                          size: 16,
                        ),
                        heightspace,
                        GridView.builder(
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
                            }),
                        heightspace,
                        heightspace,
                        heightspace,
                      ],
                    )
                  : SizedBox(),
              Center(child: Button(text: MyStrings.applyLeave,))
            ],
          ),
        ),
      ),
    );
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

  //date
  DateTime selectedDate = new DateTime.now();
  DateTime selectedendDate = new DateTime.now();
  DateTime time = new DateTime.now();
  late DateTime selectedfromDate;
  late DateTime selectedendleaveDate;
  TextEditingController? fromdate;
  TextEditingController? enddate;
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();

  Widget buildDate() => GestureDetector(
        onTap: () {
          selectDate1(context);
        },
        child: Form(
          key: formKey,
          child: AbsorbPointer(
            child: Container(
              height: 35,
              width: MediaQuery.of(context).size.width/2.1,
              child: TextFormField(
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
  Widget buildDate1() => GestureDetector(
    onTap: () {
      selectendDate1(context);
    },
    child: Form(
      key: formKey1,
      child: AbsorbPointer(
        child: Container(
          height: 35,
          width: MediaQuery.of(context).size.width/2.1,
          child: TextFormField(
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
  Future<void> selectendDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate:selectedDate,
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
