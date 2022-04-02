class FoodCampaignResponse {
  int? id;
  String? image;
  String? description;
  int? status;
  int? adminId;
  Null? categoryId;
  List<CategoryIds>? categoryIds;
  List<Null>? variations;
  List<Null>? addOns;
  List<Null>? attributes;
  List<Null>? choiceOptions;
  int? price;
  int? tax;
  String? taxType;
  int? discount;
  String? discountType;
  int? restaurantId;
  String? createdAt;
  String? updatedAt;
  int? veg;
  String? name;
  String? availableTimeStarts;
  String? availableTimeEnds;
  String? availableDateStarts;
  String? availableDateEnds;
  String? restaurantName;
  int? restaurantDiscount;
  String? restaurantOpeningTime;
  String? restaurantClosingTime;
  bool? scheduleOrder;
  int? ratingCount;
  int? avgRating;

  FoodCampaignResponse(
      {this.id,
      this.image,
      this.description,
      this.status,
      this.adminId,
      this.categoryId,
      this.categoryIds,
      this.variations,
      this.addOns,
      this.attributes,
      this.choiceOptions,
      this.price,
      this.tax,
      this.taxType,
      this.discount,
      this.discountType,
      this.restaurantId,
      this.createdAt,
      this.updatedAt,
      this.veg,
      this.name,
      this.availableTimeStarts,
      this.availableTimeEnds,
      this.availableDateStarts,
      this.availableDateEnds,
      this.restaurantName,
      this.restaurantDiscount,
      this.restaurantOpeningTime,
      this.restaurantClosingTime,
      this.scheduleOrder,
      this.ratingCount,
      this.avgRating});

  FoodCampaignResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    description = json['description'];
    status = json['status'];
    adminId = json['admin_id'];
    categoryId = json['category_id'];
    if (json['category_ids'] != null) {
      categoryIds = <CategoryIds>[];
      json['category_ids'].forEach((v) {
        categoryIds!.add(CategoryIds.fromJson(v));
      });
    }
    if (json['variations'] != null) {
      variations = <Null>[];
      json['variations'].forEach((v) {
        variations!.add(null);
      });
    }
    if (json['add_ons'] != null) {
      addOns = <Null>[];
      json['add_ons'].forEach((v) {
        addOns!.add(null);
      });
    }
    if (json['attributes'] != null) {
      attributes = <Null>[];
      json['attributes'].forEach((v) {
        attributes!.add(null);
      });
    }
    if (json['choice_options'] != null) {
      choiceOptions = <Null>[];
      json['choice_options'].forEach((v) {
        choiceOptions!.add(null);
      });
    }
    price = json['price'];
    tax = json['tax'];
    taxType = json['tax_type'];
    discount = json['discount'];
    discountType = json['discount_type'];
    restaurantId = json['restaurant_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    veg = json['veg'];
    name = json['name'];
    availableTimeStarts = json['available_time_starts'];
    availableTimeEnds = json['available_time_ends'];
    availableDateStarts = json['available_date_starts'];
    availableDateEnds = json['available_date_ends'];
    restaurantName = json['restaurant_name'];
    restaurantDiscount = json['restaurant_discount'];
    restaurantOpeningTime = json['restaurant_opening_time'];
    restaurantClosingTime = json['restaurant_closing_time'];
    scheduleOrder = json['schedule_order'];
    ratingCount = json['rating_count'];
    avgRating = json['avg_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['description'] = description;
    data['status'] = status;
    data['admin_id'] = adminId;
    data['category_id'] = categoryId;
    if (categoryIds != null) {
      data['category_ids'] = categoryIds!.map((v) => null).toList();
    }
    if (variations != null) {
      data['variations'] = variations!.map((v) => null).toList();
    }
    if (addOns != null) {
      data['add_ons'] = addOns!.map((v) => null).toList();
    }
    if (attributes != null) {
      data['attributes'] = attributes!.map((v) => null).toList();
    }
    if (choiceOptions != null) {
      data['choice_options'] = choiceOptions!.map((v) => null).toList();
    }
    data['price'] = price;
    data['tax'] = tax;
    data['tax_type'] = taxType;
    data['discount'] = discount;
    data['discount_type'] = discountType;
    data['restaurant_id'] = restaurantId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['veg'] = veg;
    data['name'] = name;
    data['available_time_starts'] = availableTimeStarts;
    data['available_time_ends'] = availableTimeEnds;
    data['available_date_starts'] = availableDateStarts;
    data['available_date_ends'] = availableDateEnds;
    data['restaurant_name'] = restaurantName;
    data['restaurant_discount'] = restaurantDiscount;
    data['restaurant_opening_time'] = restaurantOpeningTime;
    data['restaurant_closing_time'] = restaurantClosingTime;
    data['schedule_order'] = scheduleOrder;
    data['rating_count'] = ratingCount;
    data['avg_rating'] = avgRating;
    return data;
  }
}

class CategoryIds {
  String? id;
  int? position;

  CategoryIds({this.id, this.position});

  CategoryIds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['position'] = position;
    return data;
  }
}
