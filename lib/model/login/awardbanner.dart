class AwardBanner {
  int? code;
  String? message;
  Value? value;

  AwardBanner({this.code, this.message, this.value});

  AwardBanner.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    value = json['value'] != null ? new Value.fromJson(json['value']) : null;
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
  List<Awards>? awards;

  Value({this.awards});

  Value.fromJson(Map<String, dynamic> json) {
    if (json['awards'] != null) {
      awards = <Awards>[];
      json['awards'].forEach((v) {
        awards!.add(new Awards.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.awards != null) {
      data['awards'] = this.awards!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Awards {
  int? id;
  String? userId;
  int? assignedBy;
  String? awardType;
  String? teamName;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? userData;

  Awards(
      {this.id,
        this.userId,
        this.assignedBy,
        this.awardType,
        this.teamName,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.userData});

  Awards.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    assignedBy = json['assigned_by'];
    awardType = json['award_type'];
    teamName = json['team_name'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    userData = json['user_data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['assigned_by'] = this.assignedBy;
    data['award_type'] = this.awardType;
    data['team_name'] = this.teamName;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['user_data'] = this.userData;
    return data;
  }
}
