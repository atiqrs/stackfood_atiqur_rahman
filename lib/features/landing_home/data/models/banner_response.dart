class BannerResponse {
  List<Campaigns>? campaigns;
  List<Banners>? banners;

  BannerResponse({this.campaigns, this.banners});

  BannerResponse.fromJson(Map<String, dynamic> json) {
    if (json['campaigns'] != null) {
      campaigns = <Campaigns>[];
      json['campaigns'].forEach((v) {
        campaigns!.add(Campaigns.fromJson(v));
      });
    }
    if (json['banners'] != null) {
      banners = <Banners>[];
      json['banners'].forEach((v) {
        banners!.add(Banners.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (campaigns != null) {
      data['campaigns'] = campaigns!.map((v) => v.toJson()).toList();
    }
    if (banners != null) {
      data['banners'] = banners!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Campaigns {
  int? id;
  String? title;
  String? image;
  String? description;
  int? status;
  Null? adminId;
  String? createdAt;
  String? updatedAt;
  String? startTime;
  String? endTime;
  String? availableDateStarts;
  String? availableDateEnds;
  List<Null>? translations;

  Campaigns(
      {this.id,
      this.title,
      this.image,
      this.description,
      this.status,
      this.adminId,
      this.createdAt,
      this.updatedAt,
      this.startTime,
      this.endTime,
      this.availableDateStarts,
      this.availableDateEnds,
      this.translations});

  Campaigns.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    description = json['description'];
    status = json['status'];
    adminId = json['admin_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    availableDateStarts = json['available_date_starts'];
    availableDateEnds = json['available_date_ends'];
    if (json['translations'] != null) {
      translations = <Null>[];
      json['translations'].forEach((v) {
        translations!.add(null);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['description'] = description;
    data['status'] = status;
    data['admin_id'] = adminId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['available_date_starts'] = availableDateStarts;
    data['available_date_ends'] = availableDateEnds;
    if (translations != null) {
      data['translations'] = translations!.map((v) => null).toList();
    }
    return data;
  }
}

class Banners {
  int? id;
  String? title;
  String? type;
  String? image;
  Restaurant? restaurant;
  Null? food;

  Banners({this.id, this.title, this.type, this.image, this.restaurant, this.food});

  Banners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    image = json['image'];
    restaurant = json['restaurant'] != null ? Restaurant.fromJson(json['restaurant']) : null;
    food = json['food'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['type'] = type;
    data['image'] = image;
    if (restaurant != null) {
      data['restaurant'] = restaurant!.toJson();
    }
    data['food'] = food;
    return data;
  }
}

class Restaurant {
  int? id;
  String? name;
  String? phone;
  String? email;
  String? logo;
  String? latitude;
  String? longitude;
  String? address;
  Null? footerText;
  int? minimumOrder;
  int? comission;
  bool? scheduleOrder;
  int? status;
  int? vendorId;
  String? createdAt;
  String? updatedAt;
  bool? freeDelivery;
  String? coverPhoto;
  bool? delivery;
  bool? takeAway;
  bool? foodSection;
  int? tax;
  int? zoneId;
  bool? reviewsSection;
  bool? active;
  String? offDay;
  int? selfDeliverySystem;
  bool? posSystem;
  int? deliveryCharge;
  String? deliveryTime;
  int? veg;
  int? nonVeg;
  int? orderCount;
  int? totalOrder;
  String? availableTimeStarts;
  String? availableTimeEnds;
  int? avgRating;
  int? ratingCount;
  bool? gstStatus;
  String? gstCode;

  Restaurant(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.logo,
      this.latitude,
      this.longitude,
      this.address,
      this.footerText,
      this.minimumOrder,
      this.comission,
      this.scheduleOrder,
      this.status,
      this.vendorId,
      this.createdAt,
      this.updatedAt,
      this.freeDelivery,
      this.coverPhoto,
      this.delivery,
      this.takeAway,
      this.foodSection,
      this.tax,
      this.zoneId,
      this.reviewsSection,
      this.active,
      this.offDay,
      this.selfDeliverySystem,
      this.posSystem,
      this.deliveryCharge,
      this.deliveryTime,
      this.veg,
      this.nonVeg,
      this.orderCount,
      this.totalOrder,
      this.availableTimeStarts,
      this.availableTimeEnds,
      this.avgRating,
      this.ratingCount,
      this.gstStatus,
      this.gstCode});

  Restaurant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    logo = json['logo'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    footerText = json['footer_text'];
    minimumOrder = json['minimum_order'];
    comission = json['comission'];
    scheduleOrder = json['schedule_order'];
    status = json['status'];
    vendorId = json['vendor_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    freeDelivery = json['free_delivery'];
    coverPhoto = json['cover_photo'];
    delivery = json['delivery'];
    takeAway = json['take_away'];
    foodSection = json['food_section'];
    tax = json['tax'];
    zoneId = json['zone_id'];
    reviewsSection = json['reviews_section'];
    active = json['active'];
    offDay = json['off_day'];
    selfDeliverySystem = json['self_delivery_system'];
    posSystem = json['pos_system'];
    deliveryCharge = json['delivery_charge'];
    deliveryTime = json['delivery_time'];
    veg = json['veg'];
    nonVeg = json['non_veg'];
    orderCount = json['order_count'];
    totalOrder = json['total_order'];
    availableTimeStarts = json['available_time_starts'];
    availableTimeEnds = json['available_time_ends'];
    avgRating = json['avg_rating'];
    ratingCount = json['rating_count '];
    gstStatus = json['gst_status'];
    gstCode = json['gst_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['email'] = email;
    data['logo'] = logo;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['footer_text'] = footerText;
    data['minimum_order'] = minimumOrder;
    data['comission'] = comission;
    data['schedule_order'] = scheduleOrder;
    data['status'] = status;
    data['vendor_id'] = vendorId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['free_delivery'] = freeDelivery;
    data['cover_photo'] = coverPhoto;
    data['delivery'] = delivery;
    data['take_away'] = takeAway;
    data['food_section'] = foodSection;
    data['tax'] = tax;
    data['zone_id'] = zoneId;
    data['reviews_section'] = reviewsSection;
    data['active'] = active;
    data['off_day'] = offDay;
    data['self_delivery_system'] = selfDeliverySystem;
    data['pos_system'] = posSystem;
    data['delivery_charge'] = deliveryCharge;
    data['delivery_time'] = deliveryTime;
    data['veg'] = veg;
    data['non_veg'] = nonVeg;
    data['order_count'] = orderCount;
    data['total_order'] = totalOrder;
    data['available_time_starts'] = availableTimeStarts;
    data['available_time_ends'] = availableTimeEnds;
    data['avg_rating'] = avgRating;
    data['rating_count '] = ratingCount;
    data['gst_status'] = gstStatus;
    data['gst_code'] = gstCode;
    return data;
  }
}
