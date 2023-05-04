class restaurant {
  final String title;
  final String imageUrl;
  final String rating;
  final String priceRange;
  final String reviewCount;

  restaurant(
      {required this.title,
      required this.imageUrl,
      required this.rating,
      required this.priceRange,
      required this.reviewCount});

  factory restaurant.fromJson(dynamic json) {
    return restaurant(
        title: json['name'] as String,
        imageUrl: json['mainPhotoSrc'] as String,
        rating: json['aggregateRatings']['thefork']['ratingValue'].toString(),
        priceRange: json['priceRange'].toString(),
        reviewCount:
            json['aggregateRatings']['thefork']['reviewCount'].toString());
  }
  static List<restaurant> restaurantFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return restaurant.fromJson(data);
    }).toList();
  }
}
