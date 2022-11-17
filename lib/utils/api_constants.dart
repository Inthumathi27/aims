
import 'config.dart';

class ApiConstants {
  static String base_Url = Environment().config!.apiHost;
  static String base_Url_Rm ='api/v1_users/';
  static String loginURL =base_Url+base_Url_Rm+'login_authentication?';
  static String awardURL =base_Url+base_Url_Rm+'people_award?';
  static String imageUrl =base_Url+'storage/user_profile/';
  static String holidayListUrl =base_Url+base_Url_Rm+'holiday_list';
}