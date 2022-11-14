class HolidayListData {
  int? code;
  String? message;
  Value? value;

  HolidayListData({this.code, this.message, this.value});

  HolidayListData.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    value = json['value'] != null ?  Value.fromJson(json['value']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.value != null) {
      data['value'] = this.value!.toJson();
    }
    return data;
  }
}

class Value {
  List<HolidayList>? holidayList;

  Value({this.holidayList});

  Value.fromJson(Map<String, dynamic> json) {
    if (json['holiday_list'] != null) {
      holidayList = <HolidayList>[];
      json['holiday_list'].forEach((v) {
        holidayList!.add(HolidayList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (holidayList != null) {
      data['holiday_list'] = holidayList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HolidayList {
  int? id;
  String? holidayName;
  String? holidayDate;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  HolidayList(
      {this.id,
        this.holidayName,
        this.holidayDate,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  HolidayList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    holidayName = json['holiday_name'];
    holidayDate = json['holiday_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['holiday_name'] = this.holidayName;
    data['holiday_date'] = this.holidayDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
