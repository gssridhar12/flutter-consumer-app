// import 'package:flutter_consumer_app/features/home_section/src/domain/entities/response/package_enitity.dart';

// double getAverageRecommended(List<EReview> review) {
//   double sum = 0;
//   for (var review in review) {
//     sum += review.recommended;
//   }
//   return sum / review.length;
// }

// double getAverageServiceDescribed(List<EReview> review) {
//   double sum = 0;
//   for (var review in review) {
//     sum += review.serviceDescribed;
//   }
//   return sum / review.length;
// }

// double getAverageCommunication(List<EReview> review) {
//   double sum = 0;
//   for (var review in review) {
//     sum += review.communication;
//   }
//   return sum / review.length;
// }

// double getAvarageRating(List<EReview> review) {
//   double packageRecomended = getAverageRecommended(review);
//   double packageServiceAsDescribed = getAverageServiceDescribed(review);
//   double packageCommunication = getAverageCommunication(review);
//   final rating =
//       (packageRecomended + packageServiceAsDescribed + packageCommunication) /
//           3;
//   return double.parse(rating.toStringAsFixed(1));
// }
