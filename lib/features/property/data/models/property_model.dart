class PropertyDetailsModel {
  late PropertyDetails propetydetails;
  late List<Facility> facility;
  late List<String> gallery;
  late List<Review> reviewlist;
  late int totalReview;
  late String responseCode;
  late String result;
  late String responseMsg;

  PropertyDetailsModel({
    required this.propetydetails,
    required this.facility,
    required this.gallery,
    required this.reviewlist,
    required this.totalReview,
    required this.responseCode,
    required this.result,
    required this.responseMsg,
  });

  factory PropertyDetailsModel.fromJson(Map<String, dynamic> json) {
    return PropertyDetailsModel(
      propetydetails: PropertyDetails.fromJson(json['propetydetails']),
      facility:
          (json['facility'] as List).map((e) => Facility.fromJson(e)).toList(),
      gallery: List<String>.from(json['gallery']),
      reviewlist:
          (json['reviewlist'] as List).map((e) => Review.fromJson(e)).toList(),
      totalReview: json['total_review'],
      responseCode: json['ResponseCode'],
      result: json['Result'],
      responseMsg: json['ResponseMsg'],
    );
  }
}

class PropertyDetails {
  late String id;
  late String userId;
  late String title;
  late List<ImageData> image;
  late String rate;
  late String city;
  late int propertyType;
  late String propertyTitle;
  late String price;
  late String buyOrRent;
  late int isEnquiry;
  late String address;
  late String beds;
  late String ownerImage;
  late String ownerName;
  late String bathroom;
  late String sqrft;
  late String description;
  late String latitude;
  late String mobile;
  late int plimit;
  late String longitude;
  late bool isFavourite;

  PropertyDetails({
    required this.id,
    required this.userId,
    required this.title,
    required this.image,
    required this.rate,
    required this.city,
    required this.propertyType,
    required this.propertyTitle,
    required this.price,
    required this.buyOrRent,
    required this.isEnquiry,
    required this.address,
    required this.beds,
    required this.ownerImage,
    required this.ownerName,
    required this.bathroom,
    required this.sqrft,
    required this.description,
    required this.latitude,
    required this.mobile,
    required this.plimit,
    required this.longitude,
    required this.isFavourite,
  });

  factory PropertyDetails.fromJson(Map<String, dynamic> json) {
    return PropertyDetails(
      id: json['id'],
      userId: json['user_id'],
      title: json['title'],
      image: (json['image'] as List).map((e) => ImageData.fromJson(e)).toList(),
      rate: json['rate'],
      city: json['city'],
      propertyType: json['property_type'],
      propertyTitle: json['property_title'],
      price: json['price'],
      buyOrRent: json['buyorrent'],
      isEnquiry: json['is_enquiry'],
      address: json['address'],
      beds: json['beds'],
      ownerImage: json['owner_image'],
      ownerName: json['owner_name'],
      bathroom: json['bathroom'],
      sqrft: json['sqrft'],
      description: json['description'],
      latitude: json['latitude'],
      mobile: json['mobile'],
      plimit: json['plimit'],
      longitude: json['longtitude'],
      isFavourite: json['IS_FAVOURITE'],
    );
  }
}

class ImageData {
  late String image;
  late String isPanorama;

  ImageData({required this.image, required this.isPanorama});

  factory ImageData.fromJson(Map<String, dynamic> json) {
    return ImageData(
      image: json['image'],
      isPanorama: json['is_panorama'],
    );
  }
}

class Facility {
  late String img;
  late String title;

  Facility({required this.img, required this.title});

  factory Facility.fromJson(Map<String, dynamic> json) {
    return Facility(
      img: json['img'],
      title: json['title'],
    );
  }
}

class Review {
  late String userImg;
  late String userTitle;
  late int userRate;
  late String userDesc;

  Review({
    required this.userImg,
    required this.userTitle,
    required this.userRate,
    required this.userDesc,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      userImg: json['user_img'],
      userTitle: json['user_title'],
      userRate: json['user_rate'],
      userDesc: json['user_desc'] ?? '',
    );
  }
}
