import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/category.dart';
import '../model/restaurant.dart';
import '../model/user.dart';
import '../pages/category/categories_page.dart';
import '../pages/category/category_page.dart';
import '../pages/changelanguage/change_language_page.dart';
import '../pages/changepassword/change_password_page.dart';
import '../pages/filter/filter_page.dart';
import '../pages/forgotpassword/forgot_password_page.dart';
import '../pages/friends/find_friends_page.dart';
import '../pages/home/home.dart';
import '../pages/location/set_location_page.dart';
import '../pages/login/login_page.dart';
import '../pages/photos/photos_page.dart';
import '../pages/photos/preview_page.dart';
import '../pages/profile/edit_profile_page.dart';
import '../pages/profile/followers_page.dart';
import '../pages/profile/user_profile_page.dart';
import '../pages/restaurant/restaurant_details_page.dart';
import '../pages/restaurant/trending_restaurants_page.dart';
import '../pages/review/add_review_page.dart';
import '../pages/review/profile_reviews_page.dart';
import '../pages/settings/settings_page.dart';
import '../pages/signup/signup_page.dart';
import '../pages/splash/splash_page.dart';
import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.splash:
        return CupertinoPageRoute(builder: (_) => SplashPage());

      case Routes.login:
        return CupertinoPageRoute(builder: (_) => LoginPage());

      case Routes.signup:
        return CupertinoPageRoute(builder: (_) => SignupPage());

      case Routes.setLocation:
        return CupertinoPageRoute(builder: (_) => SetLocationPage());

      case Routes.forgotPassword:
        return CupertinoPageRoute(builder: (_) => ForgotPasswordPage());

      case Routes.home:
        return CupertinoPageRoute(builder: (_) => Home());

      case Routes.trendingRestaurants:
        return CupertinoPageRoute(builder: (_) => TrendingRestaurantsPage());

      case Routes.categories:
        return CupertinoPageRoute(builder: (_) => CategoriesPage());

      case Routes.category:
        if (args is Category) {
          return CupertinoPageRoute(
            builder: (_) => CategoryPage(
              category: args,
            ),
          );
        }
        return _errorRoute();

      case Routes.restaurantDetails:
        if (args is Restaurant) {
          return CupertinoPageRoute(
            builder: (_) => RestaurantDetailsPage(
              restaurant: args,
            ),
          );
        }
        return _errorRoute();

      case Routes.settings:
        return CupertinoPageRoute(builder: (_) => SettingsPage());

      case Routes.profileReviews:
        return CupertinoPageRoute(builder: (_) => ProfileReviewsPage());

      case Routes.followers:
        if (args is String) {
          return CupertinoPageRoute(
            builder: (_) => FollowersPage(
              title: args,
            ),
          );
        }
        return _errorRoute();

      case Routes.changePassword:
        return CupertinoPageRoute(builder: (_) => ChangePasswordPage());

      case Routes.changeLanguage:
        return CupertinoPageRoute(builder: (_) => ChangeLanguagePage());

      case Routes.editProfile:
        return CupertinoPageRoute(builder: (_) => EditProfilePage());

      case Routes.addReview:
        return CupertinoPageRoute(builder: (_) => AddReviewPage());

      case Routes.findFriends:
        return CupertinoPageRoute(builder: (_) => FindFriendsPage());

      case Routes.filter:
        return CupertinoPageRoute(
            builder: (_) => FilterPage(), fullscreenDialog: true);

      case Routes.photos:
        return CupertinoPageRoute(builder: (_) => PhotosPage());

      case Routes.photosPreview:
        if (args is int) {
          return CupertinoPageRoute(
            builder: (_) => PreviewPage(
              position: args,
            ),
          );
        }
        return _errorRoute();

      case Routes.profile:
        if (args is User) {
          return CupertinoPageRoute(
            builder: (_) => UserProfilePage(
              user: args,
            ),
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
