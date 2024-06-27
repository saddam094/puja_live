class ConstUrl {
  // static const String baseUrl = "https://biz-pitch-backend.onrender.com";
  static const String baseUrl = "https://jc7y6rhhae.execute-api.ap-south-1.amazonaws.com/puja_app";

  static const String login = "$baseUrl/puja_user_login";
  static const String register = "$baseUrl/puja_user_signUp";
  static const String registerVerifyOtp = "$baseUrl/puja_user_verify_signUP";
  // static const String profile = "$baseUrl/api/providers/profile";
  // static const String forgotPass = "$baseUrl/api/providers/forgot-password";
  static const String resendOtp = "$baseUrl/puja_user_resend_otp";
  static const String resetPassword = "$baseUrl/api/providers/reset-password";
  static const String updatePassword = "$baseUrl/api/providers/update-password";

  /// Home Related Url
  static const String homeNewArrivals = "$baseUrl/puja_store_new_arrival_products";
  static const String homeCeremonies = "$baseUrl/puja_store_ceremony_all_data";
  static const String particularCeremony = "$baseUrl/puja_store_particular_ceremony_all_data";


  /// Pandit Ji Related Url
  static const String panditJiList = "$baseUrl/puja_store_pandit_jii_all_data";
  static const String particularPanditJiData = "$baseUrl/puja_store_particular_pandit_jii_all_data";

  /// Shop Related Url
  static const String shopList = "$baseUrl/puja_shop_all_data";
  static const String particularShopProducts = "$baseUrl/puja_store_particular_shop_all_products";
  static const String productCategories = "$baseUrl/puja_store_particular_shop_subCategory_all_data";
  static const String particularCategoryProductsModel = "$baseUrl/puja_store_particular_shop_particular_category_all_data";
  static const String shopSearchList = "$baseUrl/puja_store_search_shop";


  /// Product Related Url
  static const String particularProduct = "$baseUrl/puja_store_particular_products_all_data";
  static const String particularProductInventory = "$baseUrl/puja_store_particular_products_inventory_details";


  /// Murti Related Url
  static const String murtiList = "$baseUrl/puja_store_idols_all_data";



  /// Ritual Wear Related Url
  static const String ritualWearList = "$baseUrl/puja_store_ritual_wear_all_data";


  /// Profile Related Url
  static const String profile = "$baseUrl/puja_user_profile_all_data";



  /// Cart Related Url
  static const String cart = "$baseUrl/puja_store_particular_user_cart_all_data";
  static const String addToCart = "$baseUrl/puja_store_user_add_to_cart";
  static const String removeFromCart = "$baseUrl/puja_user_remove_product_from_cart";
  static const String updateQuantityFromCart = "$baseUrl/puja_store_user_cart_product_quanty_update";



  static const String serviceAdd = "$baseUrl/api/providers/service";
  static const String serviceGet = "$baseUrl/api/providers/service";
  static const String serviceUpdate = "$baseUrl/api/providers/service";
  static const String serviceDelete = "$baseUrl/api/providers/service";
  static const String categoryGet = "$baseUrl/api/providers/category";
  static const String categoryUpdate = "$baseUrl/api/providers/category";
  static const String serviceGetAll = "$baseUrl/api/service";
  static const String categoryGetAll = "$baseUrl/api/Category";
  static const String updateProfile = "$baseUrl/api/providers/profile";
  static const String deleteAccount = "$baseUrl/api/providers/delete";
  static const String resendVerifyOtp = "$baseUrl/api/providers/resend-otp";
  static const String reuploadDoc = "$baseUrl/api/providers/re-upload";
  static const String businessAvailability =
      "$baseUrl/api/providers/disable-avail";
  static const String updateBusinessAvailability =
      "$baseUrl/api/providers/update-avail";
  static const String getBusinessAvailabilty = "$baseUrl/api/providers/timing";
  static const String albumVideo = "$baseUrl/api/album/video";
  static const String albumPostImages = "$baseUrl/api/album/post";
  static const String getAlbum = "$baseUrl/api/album";
  static const String getEnquires = "$baseUrl/api/providers/enquiry/?date=";


  /// Default image Url
  static const String defaultImageUrl = 'https://puja-app.s3.ap-south-1.amazonaws.com/products_image/idols.jpg';
}