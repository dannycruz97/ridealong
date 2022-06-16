
// constants used in the app

class AppConstants{

  static const String APP_NAME = "RideHome";
  static const int APP_VERSION = 1;

  static const String BASE_URL = "https://mvs.bslmeiyu.com";

  static const String POPULAR_PRODUCT_URI = "/api/v1/products/popular";

  static const String RECOMMENDED_PRODUCT_URI = "/api/v1/products/recommended";

  static const String TOKEN = "DBtoken";

  static const String UPLOAD_URL = "/uploads/";

  static const String CART_LIST="cart-list";

  static const String CART_HISTORY_LIST="cart-history-list";

}

/*
* import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loginsignup/controllers/auth_controller.dart';

AuthController authController = AuthController.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();
FirebaseAuth firebaseAuth = FirebaseAuth.instance;
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
*
* */