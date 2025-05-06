class PrefKey {
  static const String isLogin = "isLogin";
  static const String deviceId = "device_id";
  static const String userId = "id"; //that's actual (id / staffid)
  static const String distributorId = "distributor_id"; //that's actual (id / staffid)
  static const String accessToken = "access_token";
  static const String jwtAccessToken = "jwt_access_token"; // JWT token
  static const String refreshToken = "refresh_token"; // refresh token
  static const String accessExpiryTime = "access_expiry_time "; // access token expiry time (generally 10 min)
  static const String loginMobileNumber = "mobile_number"; // current login user mobile number
  static const String userData = "user_data";
  static const String chemistId = "chemist_id";
  static const String fcmToken = "fcmToken";
  static const String defaultDoctorData = "default_doctor_data";
  static const String isShowCaseDismissedForCartDelete = "delete_cart_item_showcase_dismissed";
  static const String isShowCaseDismissedForPlink = "plink_showcase_dismissed";
  static const String isShowCaseDismissedForPlinkContacts = "plink_contacts_dismissed";
  static const String isShowCaseDismissedForB2B = "b2b_showcase_dismissed";
  static const String isShowCaseDismissedForAddNewItem = "add_new_item_showcase_dismissed";
  static const String distributorMobileNo = "distributor_mobile_number";
  static const isMasterSearchInfoScanDialogCompleted = "isMasterSearchInfoScanDialogCompleted";
  static const generatePOShowcaseCount = "generate_po_showcase_count";
  static const entityType = "entity_type";

  //init api response
  static const String initDataResp = "init_data";

  // register resp
  static const String currentAppVersion = "currentAppVersion";

// update time used
  static const String forceUpdateTimeLastCheckedDate = "last_checked_date";
  static const String forceUpdateTimeClickOnNotNow = "is_click_on_not_now";

  // barcode info dialog
  static const isCreatePurchaseInfoScanDialogCompleted = "isCreatePurchaseInfoScanDialogCompleted";

  //dynamic link
  static const String utmSource = "utm_source"; // plink
  static const String utmCampaign = "utm_campaign"; // gst/pan details
  static const String utmMedium = "utm_medium"; // sender receiver details
  static const String utmContent = "utm_content";

  // item category list
  static const itemCategoryList = "item_category";
  static const itemCategoryIdList = "item_category_id";

  //salesGetData
  static const String paymentMethod = "payment_method";

  //Gst Verification Status
  static const String isGstVerified = "is_gst_verified";

  static const String isShowCaseDismissedForOrderDetail = "order_detail_showcase_dismissed";

  static const String courierIntegrationsList = "courier_integration_list";
}
