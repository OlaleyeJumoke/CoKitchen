
List<FeatureData> featureData = [
  FeatureData(),
  FeatureData(),
  FeatureData(),
  FeatureData(),
  FeatureData(),
  FeatureData(),
];

class FeatureData {
  String image, companyImage, title, description, price;
  FeatureData(
      {this.image = "assets/images/image.png",
      this.companyImage = "assets/images/companyLogo.png",
      this.description = "Delicious everyday Naija food",
      this.price = "Items as low as ₦500",
      this.title = "Jollof & Co."});
}
