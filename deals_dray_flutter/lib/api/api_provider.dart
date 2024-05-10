import 'package:deals_dray_flutter/service/api_service.dart';
import 'package:deals_dray_flutter/utils/app_urls.dart';
import 'package:dio/dio.dart';

class UserApi {
  final ApiService _apiService = ApiService();

  Future<Response> login({Map<dynamic, String>? data}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.login,
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> loginValidate({Map<dynamic, String>? data}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.loginValidate,
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> registerUser(
      {Map<dynamic, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.register,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getUsersData({Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.get(
        AppUrl.profileData,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> updateProfile({
    dynamic data,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final Response response = await _apiService.patch(
        AppUrl.profileData,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getLoyaltyPointsSummary({
    Map<String, dynamic>? headers,
    int? startPageNo,
  }) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.loyaltyPointsSummary}?page=${startPageNo ?? 1}&limit=10',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getAddressFromPostalCode(String pinCode) async {
    try {
      final Response response = await _apiService.get(
        "http://postalpincode.in/api/pincode/$pinCode",
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> logoutUser({Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.get(
        AppUrl.logoutUser,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> refreshToken({Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.refreshToken,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> newProfile({Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.get(
        AppUrl.newProfile,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> deleteUserProfilePicture(
      {Map<String, dynamic>? headers, required String? imageId}) async {
    try {
      final Response response = await _apiService.delete(
        '${AppUrl.deleteProfileImage}/$imageId',
        options: Options(headers: headers),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getVoucherHistory(
      {Map<String, dynamic>? headers,
      int? startPageNo,
      int? endPageNo,
      String? status}) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.voucherSummary}?page=${startPageNo ?? 1}&limit=9&status=${status ?? 'Active'}',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getPurchaseHistory(
      {Map<String, dynamic>? headers, int? startPageNo}) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.purchaseHistory}?page=${startPageNo ?? 1}&limit=10',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getMemberPoints(
      {Map<String, dynamic>? headers,
      int? startPageNo,
      int? endPageNo,
      String? status}) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.memberTier}?page=${startPageNo ?? 1}&limit=${endPageNo ?? 10}&status=${status ?? 'Active'}',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getStoreLocator(
      {Map<String, dynamic>? headers,
      double? long,
      double? lat,
      int? pageSize,
      String? status}) async {
    try {
      final Response response = await _apiService.get(
        // https://dev.api.klm.innowyze.in/customer/store-locator?long=12.07&lat=47.23&page=0&pageSize=10
        '${AppUrl.storeLocator}?long=$long&lat=$lat&page=0&pageSize=${pageSize ?? 3}',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> qrScanner(
      {Map<dynamic, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.scannerQRCode,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getFeedback(
      {Map<String, dynamic>? headers,
      int? startPageNo,
      int? endPageNo,
      String? status}) async {
    try {
      final Response response = await _apiService.get(
        AppUrl.feedback,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postFeedback(
      {Map<dynamic, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.feedback,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // report issue api
  Future<Response> reportIssue(
      {Map<String, dynamic>? issueContent,
      Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.reportIssue,
        data: issueContent,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // get current spend api
  Future<Response> getCurrentSpend(
      {Map<String, dynamic>? headers, String? fromDate}) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.currentSpend}?fromDate=$fromDate',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // view reported issuie api
  Future<Response> getAllReportedIssue({Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.get(AppUrl.viewReportedIssue,
          options: Options(
            headers: headers,
          ));
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getUserInterest(
      {Map<String, dynamic>? headers, String? searchItem}) async {
    try {
      final Response response = await _apiService.get(
        (searchItem?.isNotEmpty ?? false)
            ? '${AppUrl.userInterest}?search=$searchItem&page=0&pageSize=6'
            : AppUrl.userInterest,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postUserInterest(
      {Map<dynamic, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.following,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getUserInterestTags(
      {Map<String, dynamic>? headers, String? fromDate}) async {
    try {
      final Response response = await _apiService.get(
        AppUrl.userInterestTags,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getProducts(
      {Map<String, dynamic>? headers,
      String? fromDate,
      String? searchItem}) async {
    try {
      final Response response = await _apiService.get(
        (searchItem == null)
            ? AppUrl.fashionProducts
            : '${AppUrl.fashionProducts}?search=$searchItem',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getCategories({
    Map<String, dynamic>? headers,
    int? page,
  }) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.fashionCategory}?page=$page&pageSize=10',
        options: Options(
          validateStatus: (_) => true,
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getFashionProducts({
    Map<String, dynamic>? headers,
    int? page,
    String? catId,
    String? searchItem,
  }) async {
    print('catId' + catId.toString());
    page = 0;
    try {
      final Response response = await _apiService.get(
        (searchItem == null)
            ? '${AppUrl.fashionProducts}?category=$catId&page=$page&pageSize=10'
            : '${AppUrl.fashionProducts}?category=$catId&page=$page&pageSize=10&search=$searchItem',
        options: Options(
          validateStatus: (_) => true,
          headers: headers,
        ),
      );
      print('check this for liked' + response.data.toString());
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> likeProduct(
      {Map<String, dynamic>? headers,
      int? imageId,
      String? status}) async {
    print(imageId);
    try {
      final Response response = await _apiService.post(
        '${AppUrl.fashionProducts}/likes',
        data: {"imageId": imageId, "type": status},
        options: Options(
          validateStatus: (_) => true,
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getMintHistory({
    Map<String, dynamic>? headers,
    int? startPageNo,
  }) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.mintHistory}?page=${startPageNo ?? 0}&pageSize=10',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getReferalCode({
    Map<String, dynamic>? headers,
  }) async {
    try {
      final Response response = await _apiService.get(
        AppUrl.referralCode,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getMintConversionRate({
    Map<String, dynamic>? headers,
  }) async {
    try {
      final Response response = await _apiService.get(
        AppUrl.mintConversionRate,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> sendReferalCode(
      {Map<String, dynamic>? data,
      headers,
      String? programId,
      int? referalCount}) async {
    try {
      final Response response = await _apiService.post(AppUrl.sendreferralCode,
          data: data,
          options: Options(
            headers: headers,
          ));
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getMintCurrentRate({
    Map<String, dynamic>? headers,
  }) async {
    try {
      final Response response = await _apiService.get(
        AppUrl.mintCurrentRate,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> mintConvertToCash({
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.mintConvertToCash,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> sendDeviceToken(
      {Map<dynamic, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.deviceTokenFirebase,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> updateDeviceUUID(
      {Map<dynamic, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.patch(
        AppUrl.deviceUuidUpdate,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getContentData({
    Map<String, dynamic>? headers,
    required String contentType,
  }) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.contentData}/$contentType',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getAssets({
    Map<String, dynamic>? headers,
    required String screenName,
  }) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.getAssets}/$screenName',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getDealsBanner({
    Map<String, dynamic>? headers,
  }) async {
    try {
      final Response response = await _apiService.get(
        AppUrl.dealsBanner,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getDealsExclusiveData(
      {Map<String, dynamic>? headers, int? startPageNo}) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.dealsExclusive}?page=${startPageNo ?? 0}&pageSize=10',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getDealsExclusiveDataById(
      {Map<String, dynamic>? headers, required String id}) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.dealsExclusive}/$id',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getGameData(
      {Map<String, dynamic>? headers, required String gameName}) async {
    try {
      final Response response = await _apiService.get(
        '${AppUrl.gameEndPoint}/$gameName',
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postGameStart(
      {Map<dynamic, dynamic>? data,
      Map<String, dynamic>? headers,
      required String gameId}) async {
    try {
      final Response response = await _apiService.post(
        '${AppUrl.gameStart}/$gameId',
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postGameEnd(
      {Map<dynamic, dynamic>? data,
      Map<String, dynamic>? headers,
      required String gameId}) async {
    try {
      final Response response = await _apiService.post(
        '${AppUrl.gameEnd}/$gameId',
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postCustomerCurrentLocation(
      {Map<dynamic, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.userCurrentLocationUpdates,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postDeviceInfo(
      {Map<dynamic, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.userCurrentLocationUpdates,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postLoginPhone(
      {Map<dynamic, dynamic>? data, Map<String, dynamic>? headers}) async {
    try {
      final Response response = await _apiService.post(
        AppUrl.loginPhone,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
