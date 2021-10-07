/// Merupakan pintu dimana navigasi tiap halaman diberikan
/// https://flutter.dev/docs/cookbook/navigation/named-routes
///
import 'package:flutter/material.dart';

class AppRoute {
  static const String defaultRoute = '/';
  static const String foodListScreen = 'foodListScreen';

  static const String filmScreen = 'foodListScreen';

}
//
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case defaultRoute:
//         return MaterialPageRoute(builder: (_) => RouteContainer());
//
//       case homeScreen:
//         return MaterialPageRoute(builder: (_) => BottomNavigation());
//
//       case findLocationScreen:
//         return MaterialPageRoute(builder: (_) => FindLocationScreen());
//
//       case foodListScreen:
//         return MaterialPageRoute(builder: (_) => FoodListScreen());
//
//       case foodDetailScreen:
//         return MaterialPageRoute(
//             builder: (_) =>
//                 FoodDetailScreen(data: settings.arguments as SampleModel));
//
//       case profileScreen:
//         return MaterialPageRoute(builder: (_) => ProfileScreen());
//
//       case profileBeforeLoginScreen:
//         return MaterialPageRoute(builder: (_) => ProfileBeforeLoginScreen());
//
//       case profileEditScreen:
//         return MaterialPageRoute(builder: (_) => ProfileEditScreen());
//
//       case loginScreen:
//         return MaterialPageRoute(
//             builder: (_) => LoginScreen(url: settings.arguments as String));
//
//       case paymentGatewayScreen:
//         return MaterialPageRoute(
//             builder: (_) =>
//                 PaymentGatewayScreen(url: settings.arguments as String));
//
//       case otpScreen:
//         return MaterialPageRoute(
//             builder: (_) =>
//                 OtpScreen(isFromRegister: settings.arguments as bool));
//
//       case registerScreen:
//         return MaterialPageRoute(
//             builder: (_) => RegisterScreen(url: settings.arguments as String));
//
//       case loginOptionScreen:
//         return MaterialPageRoute(builder: (_) => LoginOptionScreen());
//
//       case orderCompleteScreen:
//         return MaterialPageRoute(
//             builder: (_) =>
//                 OrderCompleteScreen(isFromTracker: settings.arguments as bool));
//
//       case onboardingScreen:
//         return PageRouteBuilder(
//           pageBuilder: (context, animation, secondaryAnimation) =>
//               const OnboardingScreen(),
//           transitionDuration: Duration(milliseconds: 1000),
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             const begin = Offset(0, 1.0);
//             const end = Offset.zero;
//             const curve = Curves.easeOut;
//
//             var tween =
//                 Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//
//             return SlideTransition(
//               position: animation.drive(tween),
//               child: child,
//             );
//           },
//         );
//
//       case helpCenterScreen:
//         return MaterialPageRoute(builder: (_) => HelpCenterScreen());
//
//       case pickupPointScreen:
//         return MaterialPageRoute(builder: (_) => PickupPointScreen());
//
//       case brandsOutletsScreen:
//         return MaterialPageRoute(builder: (_) => BrandsOutletsScreen());
//
//       case detailOutletScreen:
//         return MaterialPageRoute(
//             builder: (_) => DetailOutletScreen(
//                   outletData: settings.arguments as OutletModel,
//                 ));
//
//       case menuByStoreScreen:
//         return MaterialPageRoute(builder: (_) => MenuByStoreScreen());
//
//       case keranjangScreen:
//         return MaterialPageRoute(
//             builder: (_) => KeranjangScreen(
//                 listProduct: settings.arguments as List<ProductModel>));
//
//       case listPaymentMethodScreen:
//         return MaterialPageRoute(builder: (_) => ListPaymentMethodScreen());
//
//       case waitingConfirmOrderScreen:
//         return MaterialPageRoute(builder: (_) => WaitingConfirmOrderScreen());
//
//       case trackerScreen:
//         return MaterialPageRoute(
//             builder: (_) =>
//                 TrackerScreen(orderDetailId: settings.arguments as String));
//
//       case orderScreen:
//         return MaterialPageRoute(builder: (_) => OrderScreen());
//
//       case historyScreen:
//         return MaterialPageRoute(builder: (_) => HistoryScreen());
//
//       case promoScreen:
//         return MaterialPageRoute(builder: (_) => PromoScreen());
//
//       case detailHistoryScreen:
//         return MaterialPageRoute(builder: (_) => DetailHistoryScreen(history: settings.arguments as Orders));
//
//       case notificationScreen:
//         return MaterialPageRoute(builder: (_) => NotificationScreen());
//
//       case refundScreen:
//         return MaterialPageRoute(
//             builder: (_) =>
//                 RefundScreen(history: settings.arguments as Orders));
//
//       default:
//         return MaterialPageRoute(
//             builder: (_) => Scaffold(
//                   body: Center(
//                       child: Text('No route defined for ${settings.name}')),
//                 ));
//     }
//   }
// }
//
// class InstantPageRoute extends MaterialPageRoute {
//   @override
//   Duration get transitionDuration => const Duration(milliseconds: 0);
//
//   InstantPageRoute({builder}) : super(builder: builder);
// }
