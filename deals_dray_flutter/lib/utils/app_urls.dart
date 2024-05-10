class AppUrl {
  AppUrl._();

  // base url
  static const String baseUrl = 'http://devapiv3.dealsdray.com/api/v2/user';

  // receiveTimeout
  static const int receiveTimeout = 35000;

  // connectTimeout
  static const int connectionTimeout = 35000;

  static const String refreshToken = '$baseUrl/auth/refresh-token';
  static const String login = '$baseUrl/auth/login';
  static const String loginValidate = '$baseUrl/auth/validate';
  static const String register = '$baseUrl/auth/register';
  static const String profileData = '$baseUrl/customer/profile';
  static const String loyaltyPointsSummary =
      '$baseUrl/rewards/loyalty-points-history';
  static const String logoutUser = '$baseUrl/auth/logout';
  static const String newProfile = '$baseUrl/customer/new/profile';
  static const String voucherSummary = '$baseUrl/rewards/voucher-history';
  static const String purchaseHistory = '$baseUrl/rewards/purchase-history';
  static const String memberTier = '$baseUrl/rewards/membership-tiers';
  static const String storeLocator = '$baseUrl/customer/store-locator';
  static const String currentSpend = '$baseUrl/customer/purchase-groups';
  static const String scannerQRCode = '$baseUrl/customer/store-visit';
  static const String feedback = '$baseUrl/customer/feedback';
  static const String reportIssue = '$baseUrl/customer/report-issue';
  static const String viewReportedIssue = '$baseUrl/customer/all-reports';

  static const String userInterest = '$baseUrl/tags/interest';
  static const String following = '$baseUrl/customer/following';
  static const String userInterestTags = '$baseUrl/tags/customer-tags';
  static const String fashionCategory = '$baseUrl/product/category';
  static const String fashionProducts = '$baseUrl/product';
  static const String mintHistory = '$baseUrl/rewards/mint-history';
  static const String mintConversionRate =
      '$baseUrl/rewards/mint-conversion-rate';
  static const String mintCurrentRate = '$baseUrl/rewards/current-mint';
  static const String mintConvertToCash = '$baseUrl/rewards/covert-to-cash';
  static const String contentData = '$baseUrl/customer/content';
  static const String referralCode = '$baseUrl/customer/referral';
  static const String sendreferralCode = '$baseUrl/customer/referral/sent';
  static const String deviceTokenFirebase = '$baseUrl/customer/firebase';
  static const String deviceUuidUpdate = '$baseUrl/customer/firebase';
  static const String getAssets = '$baseUrl/asset/screen';
  static const String deleteProfileImage = '$baseUrl/customer/profile-image';

  static const String dealsBanner = '$baseUrl/customer/exclusive-deal/banner';
  static const String dealsExclusive = '$baseUrl/customer/exclusive-deal';
  static const String gameEndPoint = '$baseUrl/game';
  static const String gameStart = '$baseUrl/game/start';
  static const String gameEnd = '$baseUrl/game/end';

  // user current location
  static const String userCurrentLocationUpdates = '$baseUrl/customer/location';

  static const String loginPhone = '$baseUrl/otp';

}
