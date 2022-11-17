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
  int? userId;
  int? assignedBy;
  String? awardType;
  String? teamName;
  Null? deletedAt;
  String? createdAt;
  String? updatedAt;
  UserData? userData;
  Department? department;

  Awards(
      {this.id,
        this.userId,
        this.assignedBy,
        this.awardType,
        this.teamName,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.userData,
        this.department});

  Awards.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    assignedBy = json['assigned_by'];
    awardType = json['award_type'];
    teamName = json['team_name'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    userData = json['user_data'] != null
        ? new UserData.fromJson(json['user_data'])
        : null;
    department = json['department'] != null
        ? new Department.fromJson(json['department'])
        : null;
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
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    if (this.department != null) {
      data['department'] = this.department!.toJson();
    }
    return data;
  }
}

class UserData {
  int? id;
  String? empId;
  String? userName;
  String? email;
  int? reportingMgr;
  String? dob;
  String? doj;
  Null? releavingReason;
  String? contactNo;
  String? designation;
  Null? target;
  String? userType;
  String? status;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  Null? dol;
  String? practiceClientListMgr;

  UserData(
      {this.id,
        this.empId,
        this.userName,
        this.email,
        this.reportingMgr,
        this.dob,
        this.doj,
        this.releavingReason,
        this.contactNo,
        this.designation,
        this.target,
        this.userType,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.dol,
        this.practiceClientListMgr});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    empId = json['emp_id'];
    userName = json['user_name'];
    email = json['email'];
    reportingMgr = json['reporting_mgr'];
    dob = json['dob'];
    doj = json['doj'];
    releavingReason = json['releaving_reason'];
    contactNo = json['contact_no'];
    designation = json['designation'];
    target = json['target'];
    userType = json['user_type'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    dol = json['dol'];
    practiceClientListMgr = json['practice_client_list_mgr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['emp_id'] = this.empId;
    data['user_name'] = this.userName;
    data['email'] = this.email;
    data['reporting_mgr'] = this.reportingMgr;
    data['dob'] = this.dob;
    data['doj'] = this.doj;
    data['releaving_reason'] = this.releavingReason;
    data['contact_no'] = this.contactNo;
    data['designation'] = this.designation;
    data['target'] = this.target;
    data['user_type'] = this.userType;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['dol'] = this.dol;
    data['practice_client_list_mgr'] = this.practiceClientListMgr;
    return data;
  }
}

class Department {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? hrTicketCode;

  Department(
      {this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.hrTicketCode});

  Department.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    hrTicketCode = json['hr_ticket_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['hr_ticket_code'] = this.hrTicketCode;
    return data;
  }
}
