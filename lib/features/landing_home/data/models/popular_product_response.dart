class PopularProductResponse {
  int? totalSize;
  Null? limit;
  Null? offset;
  List<Products>? products;

  PopularProductResponse({this.totalSize, this.limit, this.offset, this.products});

  PopularProductResponse.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_size'] = totalSize;
    data['limit'] = limit;
    data['offset'] = offset;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  String? name;
  String? description;
  String? image;
  int? categoryId;
  List<CategoryIds>? categoryIds;
  List<Variations>? variations;
  List<AddOns>? addOns;
  List<String>? attributes;
  List<ChoiceOptions>? choiceOptions;
  double? price;
  int? tax;
  String? taxType;
  int? discount;
  String? discountType;
  String? availableTimeStarts;
  String? availableTimeEnds;
  int? veg;
  int? status;
  int? restaurantId;
  String? createdAt;
  String? updatedAt;
  int? orderCount;
  int? avgRating;
  int? ratingCount;
  String? restaurantName;
  int? restaurantDiscount;
  String? restaurantOpeningTime;
  String? restaurantClosingTime;
  bool? scheduleOrder;

  Products(
      {this.id,
      this.name,
      this.description,
      this.image,
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
      this.availableTimeStarts,
      this.availableTimeEnds,
      this.veg,
      this.status,
      this.restaurantId,
      this.createdAt,
      this.updatedAt,
      this.orderCount,
      this.avgRating,
      this.ratingCount,
      this.restaurantName,
      this.restaurantDiscount,
      this.restaurantOpeningTime,
      this.restaurantClosingTime,
      this.scheduleOrder});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    categoryId = json['category_id'];
    if (json['category_ids'] != null) {
      categoryIds = <CategoryIds>[];
      json['category_ids'].forEach((v) {
        categoryIds!.add(CategoryIds.fromJson(v));
      });
    }
    if (json['variations'] != null) {
      variations = <Variations>[];
      json['variations'].forEach((v) {
        variations!.add(Variations.fromJson(v));
      });
    }
    if (json['add_ons'] != null) {
      addOns = <AddOns>[];
      json['add_ons'].forEach((v) {
        addOns!.add(AddOns.fromJson(v));
      });
    }
    attributes = json['attributes'].cast<String>();
    if (json['choice_options'] != null) {
      choiceOptions = <ChoiceOptions>[];
      json['choice_options'].forEach((v) {
        choiceOptions!.add(ChoiceOptions.fromJson(v));
      });
    }
    price = json['price'];
    tax = json['tax'];
    taxType = json['tax_type'];
    discount = json['discount'];
    discountType = json['discount_type'];
    availableTimeStarts = json['available_time_starts'];
    availableTimeEnds = json['available_time_ends'];
    veg = json['veg'];
    status = json['status'];
    restaurantId = json['restaurant_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    orderCount = json['order_count'];
    avgRating = json['avg_rating'];
    ratingCount = json['rating_count'];
    restaurantName = json['restaurant_name'];
    restaurantDiscount = json['restaurant_discount'];
    restaurantOpeningTime = json['restaurant_opening_time'];
    restaurantClosingTime = json['restaurant_closing_time'];
    scheduleOrder = json['schedule_order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['image'] = image;
    data['category_id'] = categoryId;
    if (categoryIds != null) {
      data['category_ids'] = categoryIds!.map((v) => v.toJson()).toList();
    }
    if (variations != null) {
      data['variations'] = variations!.map((v) => v.toJson()).toList();
    }
    if (addOns != null) {
      data['add_ons'] = addOns!.map((v) => v.toJson()).toList();
    }
    data['attributes'] = attributes;
    if (choiceOptions != null) {
      data['choice_options'] = choiceOptions!.map((v) => v.toJson()).toList();
    }
    data['price'] = price;
    data['tax'] = tax;
    data['tax_type'] = taxType;
    data['discount'] = discount;
    data['discount_type'] = discountType;
    data['available_time_starts'] = availableTimeStarts;
    data['available_time_ends'] = availableTimeEnds;
    data['veg'] = veg;
    data['status'] = status;
    data['restaurant_id'] = restaurantId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['order_count'] = orderCount;
    data['avg_rating'] = avgRating;
    data['rating_count'] = ratingCount;
    data['restaurant_name'] = restaurantName;
    data['restaurant_discount'] = restaurantDiscount;
    data['restaurant_opening_time'] = restaurantOpeningTime;
    data['restaurant_closing_time'] = restaurantClosingTime;
    data['schedule_order'] = scheduleOrder;
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

class Variations {
  String? type;
  int? price;

  Variations({this.type, this.price});

  Variations.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['price'] = price;
    return data;
  }
}

class AddOns {
  int? id;
  String? name;
  int? price;
  String? createdAt;
  String? updatedAt;
  int? restaurantId;
  int? status;

  AddOns({this.id, this.name, this.price, this.createdAt, this.updatedAt, this.restaurantId, this.status});

  AddOns.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    restaurantId = json['restaurant_id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['restaurant_id'] = restaurantId;
    data['status'] = status;
    return data;
  }
}

class ChoiceOptions {
  String? name;
  String? title;
  List<String>? options;

  ChoiceOptions({this.name, this.title, this.options});

  ChoiceOptions.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    options = json['options'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['title'] = title;
    data['options'] = options;
    return data;
  }
}
