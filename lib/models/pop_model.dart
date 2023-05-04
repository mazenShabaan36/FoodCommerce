class popular {
  final String title;
  final int stars;
  final String old_price;
  final String new_price;
  final String image_url;
   bool isFavourite = false;

  popular(
      {required this.title,
      required this.image_url,
      required this.stars,
      required this.old_price,
      required this.new_price});
}
