class LoginResponse {
  int? code;
  String? message;
  Value? value;

  LoginResponse({this.code, this.message, this.value});

  LoginResponse.fromJson(Map<String, dynamic> json) {
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
  UserInfo? userInfo;
  UserPersonalInfo? userPersonalInfo;
  UserProfessionalInfo? userProfessionalInfo;
  BusinessInfo? businessInfo;
  PfInfo? pfInfo;
  PanInfo? panInfo;
  List<PaymentInfo>? paymentInfo;

  Value(
      {this.userInfo,
        this.userPersonalInfo,
        this.userProfessionalInfo,
        this.businessInfo,
        this.pfInfo,
        this.panInfo,
        this.paymentInfo});

  Value.fromJson(Map<String, dynamic> json) {
    userInfo = json['user_info'] != null
        ? new UserInfo.fromJson(json['user_info'])
        : null;
    userPersonalInfo = json['user_personal_info'] != null
        ? new UserPersonalInfo.fromJson(json['user_personal_info'])
        : null;
    userProfessionalInfo = json['user_professional_info'] != null
        ? new UserProfessionalInfo.fromJson(json['user_professional_info'])
        : null;
    businessInfo = json['business_info'] != null
        ? new BusinessInfo.fromJson(json['business_info'])
        : null;
    pfInfo =
    json['pf_info'] != null ? new PfInfo.fromJson(json['pf_info']) : null;
    panInfo = json['pan_info'] != null
        ? new PanInfo.fromJson(json['pan_info'])
        : null;
    if (json['payment_info'] != null) {
      paymentInfo = <PaymentInfo>[];
      json['payment_info'].forEach((v) {
        paymentInfo!.add(new PaymentInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userInfo != null) {
      data['user_info'] = this.userInfo!.toJson();
    }
    if (this.userPersonalInfo != null) {
      data['user_personal_info'] = this.userPersonalInfo!.toJson();
    }
    if (this.userProfessionalInfo != null) {
      data['user_professional_info'] = this.userProfessionalInfo!.toJson();
    }
    if (this.businessInfo != null) {
      data['business_info'] = this.businessInfo!.toJson();
    }
    if (this.pfInfo != null) {
      data['pf_info'] = this.pfInfo!.toJson();
    }
    if (this.panInfo != null) {
      data['pan_info'] = this.panInfo!.toJson();
    }
    if (this.paymentInfo != null) {
      data['payment_info'] = this.paymentInfo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserInfo {
  int? id;
  String? empId;
  String? userName;
  String? email;
  int? reportingMgr;
  String? dob;
  String? doj;
  String? releavingReason;
  String? contactNo;
  Designation? designation;
  String? target;
  String? userType;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? dol;
  String? practiceClientListMgr;

  UserInfo(
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

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    empId = json['emp_id'];
    userName = json['user_name'];
    email = json['email'];
    reportingMgr = json['reporting_mgr'];
    dob = json['dob'];
    doj = json['doj'];
    releavingReason = json['releaving_reason'];
    contactNo = json['contact_no'];
    designation = json['designation'] != null
        ? new Designation.fromJson(json['designation'])
        : null;
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
    if (this.designation != null) {
      data['designation'] = this.designation!.toJson();
    }
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

class Designation {
  int? id;
  String? designation;
  String? status;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  Designation(
      {this.id,
        this.designation,
        this.status,
        this.deletedAt,
        this.createdAt,
        this.updatedAt});

  Designation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    designation = json['designation'];
    status = json['status'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['designation'] = this.designation;
    data['status'] = this.status;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class UserPersonalInfo {
  int? id;
  int? userId;
  String? fatherName;
  String? gender;
  String? maritalStatus;
  String? addressLine1;
  String? addressLine2;
  String? permanentCity;
  String? permanentState;
  int? permanentPincode;
  String? commAddress1;
  String? commAddress2;
  String? commCity;
  String? commState;
  int? commPincode;
  String? emergencyContactPerson;
  String? emergencyContactNo;
  String? bloodGroup;
  String? reportingPerson2;
  int? reportingPerson3;
  String? location;
  Department? department;
  String? firstName;
  String? lastName;
  String? initial;
  String? spouseName;
  String? profileImgUrl;
  String? aadharImgUrl;
  String? aadharReason;
  String? panImgUrl;
  String? panReason;
  String? drivingLicenceImgUrl;
  String? drivingReason;
  String? passportImgUrl;
  String? passportReason;
  String? covidVaccinationImgUrl;
  String? covidReason;
  String? documentRemark;
  String? otherDocument;
  String? otherDocumentReason;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  int? companyId;
  Bloodgroup? bloodgroup;

  UserPersonalInfo(
      {this.id,
        this.userId,
        this.fatherName,
        this.gender,
        this.maritalStatus,
        this.addressLine1,
        this.addressLine2,
        this.permanentCity,
        this.permanentState,
        this.permanentPincode,
        this.commAddress1,
        this.commAddress2,
        this.commCity,
        this.commState,
        this.commPincode,
        this.emergencyContactPerson,
        this.emergencyContactNo,
        this.bloodGroup,
        this.reportingPerson2,
        this.reportingPerson3,
        this.location,
        this.department,
        this.firstName,
        this.lastName,
        this.initial,
        this.spouseName,
        this.profileImgUrl,
        this.aadharImgUrl,
        this.aadharReason,
        this.panImgUrl,
        this.panReason,
        this.drivingLicenceImgUrl,
        this.drivingReason,
        this.passportImgUrl,
        this.passportReason,
        this.covidVaccinationImgUrl,
        this.covidReason,
        this.documentRemark,
        this.otherDocument,
        this.otherDocumentReason,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.companyId,
        this.bloodgroup});

  UserPersonalInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    fatherName = json['father_name'];
    gender = json['gender'];
    maritalStatus = json['marital_status'];
    addressLine1 = json['address_line1'];
    addressLine2 = json['address_line2'];
    permanentCity = json['permanent_city'];
    permanentState = json['permanent_state'];
    permanentPincode = json['permanent_pincode'];
    commAddress1 = json['comm_address_1'];
    commAddress2 = json['comm_address_2'];
    commCity = json['comm_city'];
    commState = json['comm_state'];
    commPincode = json['comm_pincode'];
    emergencyContactPerson = json['emergency_contact_person'];
    emergencyContactNo = json['emergency_contact_no'];
    bloodGroup = json['blood_group'];
    reportingPerson2 = json['reporting_person2'];
    reportingPerson3 = json['reporting_person3'];
    location = json['location'];
    department = json['department'] != null
        ? new Department.fromJson(json['department'])
        : null;
    firstName = json['first_name'];
    lastName = json['last_name'];
    initial = json['initial'];
    spouseName = json['spouse_name'];
    profileImgUrl = json['profile_img_url'];
    aadharImgUrl = json['aadhar_img_url'];
    aadharReason = json['aadhar_reason'];
    panImgUrl = json['pan_img_url'];
    panReason = json['pan_reason'];
    drivingLicenceImgUrl = json['driving_licence_img_url'];
    drivingReason = json['driving_reason'];
    passportImgUrl = json['passport_img_url'];
    passportReason = json['passport_reason'];
    covidVaccinationImgUrl = json['covid_vaccination_img_url'];
    covidReason = json['covid_reason'];
    documentRemark = json['document_remark'];
    otherDocument = json['other_document'];
    otherDocumentReason = json['other_document_reason'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    companyId = json['company_id'];
    bloodgroup = json['bloodgroup'] != null
        ? new Bloodgroup.fromJson(json['bloodgroup'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['father_name'] = this.fatherName;
    data['gender'] = this.gender;
    data['marital_status'] = this.maritalStatus;
    data['address_line1'] = this.addressLine1;
    data['address_line2'] = this.addressLine2;
    data['permanent_city'] = this.permanentCity;
    data['permanent_state'] = this.permanentState;
    data['permanent_pincode'] = this.permanentPincode;
    data['comm_address_1'] = this.commAddress1;
    data['comm_address_2'] = this.commAddress2;
    data['comm_city'] = this.commCity;
    data['comm_state'] = this.commState;
    data['comm_pincode'] = this.commPincode;
    data['emergency_contact_person'] = this.emergencyContactPerson;
    data['emergency_contact_no'] = this.emergencyContactNo;
    data['blood_group'] = this.bloodGroup;
    data['reporting_person2'] = this.reportingPerson2;
    data['reporting_person3'] = this.reportingPerson3;
    data['location'] = this.location;
    if (this.department != null) {
      data['department'] = this.department!.toJson();
    }
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['initial'] = this.initial;
    data['spouse_name'] = this.spouseName;
    data['profile_img_url'] = this.profileImgUrl;
    data['aadhar_img_url'] = this.aadharImgUrl;
    data['aadhar_reason'] = this.aadharReason;
    data['pan_img_url'] = this.panImgUrl;
    data['pan_reason'] = this.panReason;
    data['driving_licence_img_url'] = this.drivingLicenceImgUrl;
    data['driving_reason'] = this.drivingReason;
    data['passport_img_url'] = this.passportImgUrl;
    data['passport_reason'] = this.passportReason;
    data['covid_vaccination_img_url'] = this.covidVaccinationImgUrl;
    data['covid_reason'] = this.covidReason;
    data['document_remark'] = this.documentRemark;
    data['other_document'] = this.otherDocument;
    data['other_document_reason'] = this.otherDocumentReason;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['company_id'] = this.companyId;
    if (this.bloodgroup != null) {
      data['bloodgroup'] = this.bloodgroup!.toJson();
    }
    return data;
  }
}

class Department {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Department(
      {this.id, this.name, this.createdAt, this.updatedAt, this.deletedAt});

  Department.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class Bloodgroup {
  int? id;
  String? bloodGroupName;
  String? status;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  Bloodgroup(
      {this.id,
        this.bloodGroupName,
        this.status,
        this.deletedAt,
        this.createdAt,
        this.updatedAt});

  Bloodgroup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bloodGroupName = json['blood_group_name'];
    status = json['status'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['blood_group_name'] = this.bloodGroupName;
    data['status'] = this.status;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class UserProfessionalInfo {
  int? id;
  int? userId;
  List<String>? highestQualification;
  List<String>? institutionLastAttended;
  List<String>? certifications;
  int? overallExperience;
  int? healthcareExperience;
  String? verticalExperince;
  String? lastOrganizationWorked;
  String? tenureThisOrganization;
  List<String>? typeOfBilling;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  UserProfessionalInfo(
      {this.id,
        this.userId,
        this.highestQualification,
        this.institutionLastAttended,
        this.certifications,
        this.overallExperience,
        this.healthcareExperience,
        this.verticalExperince,
        this.lastOrganizationWorked,
        this.tenureThisOrganization,
        this.typeOfBilling,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  UserProfessionalInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    highestQualification = json['highest_qualification'].cast<String>();
    institutionLastAttended = json['institution_last_attended'].cast<String>();
    certifications = json['certifications'].cast<String>();
    overallExperience = json['overall_experience'];
    healthcareExperience = json['healthcare_experience'];
    verticalExperince = json['vertical_experince'];
    lastOrganizationWorked = json['last_organization_worked'];
    tenureThisOrganization = json['tenure_this_organization'];
    typeOfBilling = json['type_of_billing'].cast<String>();
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['highest_qualification'] = this.highestQualification;
    data['institution_last_attended'] = this.institutionLastAttended;
    data['certifications'] = this.certifications;
    data['overall_experience'] = this.overallExperience;
    data['healthcare_experience'] = this.healthcareExperience;
    data['vertical_experince'] = this.verticalExperince;
    data['last_organization_worked'] = this.lastOrganizationWorked;
    data['tenure_this_organization'] = this.tenureThisOrganization;
    data['type_of_billing'] = this.typeOfBilling;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class BusinessInfo {
  int? id;
  int? userId;
  String? billingProjectsExperience;
  String? billingSoftwaresExperience;
  String? specialitiesExperience;
  List<String>? computerProficiency;
  String? strengths;
  String? interestsHobbies;
  String? coreCompetentAreas;
  String? areasOfImprovement;
  List<String>? languageProficiency;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  BusinessInfo(
      {this.id,
        this.userId,
        this.billingProjectsExperience,
        this.billingSoftwaresExperience,
        this.specialitiesExperience,
        this.computerProficiency,
        this.strengths,
        this.interestsHobbies,
        this.coreCompetentAreas,
        this.areasOfImprovement,
        this.languageProficiency,
        this.deletedAt,
        this.createdAt,
        this.updatedAt});

  BusinessInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    billingProjectsExperience = json['billing_projects_experience'];
    billingSoftwaresExperience = json['billing_softwares_experience'];
    specialitiesExperience = json['specialities_experience'];
    computerProficiency = json['computer_proficiency'].cast<String>();
    strengths = json['strengths'];
    interestsHobbies = json['interests_hobbies'];
    coreCompetentAreas = json['core_competent_areas'];
    areasOfImprovement = json['areas_of_improvement'];
    languageProficiency = json['language_proficiency'].cast<String>();
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['billing_projects_experience'] = this.billingProjectsExperience;
    data['billing_softwares_experience'] = this.billingSoftwaresExperience;
    data['specialities_experience'] = this.specialitiesExperience;
    data['computer_proficiency'] = this.computerProficiency;
    data['strengths'] = this.strengths;
    data['interests_hobbies'] = this.interestsHobbies;
    data['core_competent_areas'] = this.coreCompetentAreas;
    data['areas_of_improvement'] = this.areasOfImprovement;
    data['language_proficiency'] = this.languageProficiency;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class PfInfo {
  int? id;
  int? userId;
  String? pfFlag;
  String? pfJoinDate;
  String? pfNumber;
  String? pfFpfNo;
  String? pfNewVersion;
  String? pfVpfPer;
  String? pfRemarks;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  PfInfo(
      {this.id,
        this.userId,
        this.pfFlag,
        this.pfJoinDate,
        this.pfNumber,
        this.pfFpfNo,
        this.pfNewVersion,
        this.pfVpfPer,
        this.pfRemarks,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  PfInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    pfFlag = json['pf_flag'];
    pfJoinDate = json['pf_join_date'];
    pfNumber = json['pf_number'];
    pfFpfNo = json['pf_fpf_no'];
    pfNewVersion = json['pf_new_version'];
    pfVpfPer = json['pf_vpf_per'];
    pfRemarks = json['pf_remarks'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['pf_flag'] = this.pfFlag;
    data['pf_join_date'] = this.pfJoinDate;
    data['pf_number'] = this.pfNumber;
    data['pf_fpf_no'] = this.pfFpfNo;
    data['pf_new_version'] = this.pfNewVersion;
    data['pf_vpf_per'] = this.pfVpfPer;
    data['pf_remarks'] = this.pfRemarks;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class PanInfo {
  int? id;
  int? userId;
  String? panNumber;
  String? panGratuityCode;
  String? panUanNumber;
  String? panPran;
  String? panGroupJoinDate;
  String? panAadharNumber;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  PanInfo(
      {this.id,
        this.userId,
        this.panNumber,
        this.panGratuityCode,
        this.panUanNumber,
        this.panPran,
        this.panGroupJoinDate,
        this.panAadharNumber,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  PanInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    panNumber = json['pan_number'];
    panGratuityCode = json['pan_gratuity_code'];
    panUanNumber = json['pan_uan_number'];
    panPran = json['pan_pran'];
    panGroupJoinDate = json['pan_group_join_date'];
    panAadharNumber = json['pan_aadhar_number'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['pan_number'] = this.panNumber;
    data['pan_gratuity_code'] = this.panGratuityCode;
    data['pan_uan_number'] = this.panUanNumber;
    data['pan_pran'] = this.panPran;
    data['pan_group_join_date'] = this.panGroupJoinDate;
    data['pan_aadhar_number'] = this.panAadharNumber;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class PaymentInfo {
  int? id;
  int? userId;
  String? companyName;
  String? companyDesignation;
  String? workStartDate;
  String? workEndDate;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  PaymentInfo(
      {this.id,
        this.userId,
        this.companyName,
        this.companyDesignation,
        this.workStartDate,
        this.workEndDate,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  PaymentInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    companyName = json['company_name'];
    companyDesignation = json['company_designation'];
    workStartDate = json['work_start_date'];
    workEndDate = json['work_end_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['company_name'] = this.companyName;
    data['company_designation'] = this.companyDesignation;
    data['work_start_date'] = this.workStartDate;
    data['work_end_date'] = this.workEndDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
