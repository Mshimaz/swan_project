class HomeModel {
  int? success;
  String? message;
  List<Banner1>? banner1;
  List<Banner1>? banner2;
  List<Banner1>? banner3;
  List<Banner1>? banner4;
  // List<Banner1>? banner5;
  List<Products>? ourProducts;
  List<Products>? suggestedProducts;
  List<Products>? bestSeller;
  List<Products>? flashSail;
  List<Categories>? categories;
  List<TopAccessories>? topAccessories;
  List<Featuredbrands>? featuredbrands;
  int? cartcount;
  // int? wishlistcount;
  Currency? currency;
  int? notificationCount;

  HomeModel(
      {this.success,
      this.message,
      this.banner1,
      this.banner2,
      this.banner3,
      this.banner4,
      // this.banner5,
      this.ourProducts,
      this.suggestedProducts,
      this.bestSeller,
      this.flashSail,
      this.categories,
      this.topAccessories,
      this.featuredbrands,
      this.cartcount,
      // this.wishlistcount,
      this.currency,
      this.notificationCount});

  HomeModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['banner1'] != null) {
      banner1 = <Banner1>[];
      json['banner1'].forEach((v) {
        banner1!.add(Banner1.fromJson(v));
      });
    }
    if (json['banner2'] != null) {
      banner2 = <Banner1>[];
      json['banner2'].forEach((v) {
        banner2!.add(Banner1.fromJson(v));
      });
    }
    if (json['banner3'] != null) {
      banner3 = <Banner1>[];
      json['banner3'].forEach((v) {
        banner3!.add(Banner1.fromJson(v));
      });
    }
    if (json['banner4'] != null) {
      banner4 = <Banner1>[];
      json['banner4'].forEach((v) {
        banner4!.add(Banner1.fromJson(v));
      });
    }
    // if (json['banner5'] != null) {
    //   banner5 = <Banner1>[];
    //   json['banner5'].forEach((v) {
    //     banner5!.add(Banner1.fromJson(v));
    //   });
    // }
    if (json['our_products'] != null) {
      ourProducts = <Products>[];
      json['our_products'].forEach((v) {
        ourProducts!.add(Products.fromJson(v));
      });
    }
    if (json['suggested_products'] != null) {
      suggestedProducts = <Products>[];
      json['suggested_products'].forEach((v) {
        suggestedProducts!.add(Products.fromJson(v));
      });
    }
    if (json['best_seller'] != null) {
      bestSeller = <Products>[];
      json['best_seller'].forEach((v) {
        bestSeller!.add(Products.fromJson(v));
      });
    }
    if (json['flash_sail'] != null) {
      flashSail = <Products>[];
      json['flash_sail'].forEach((v) {
        flashSail!.add(Products.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    if (json['top_accessories'] != null) {
      topAccessories = <TopAccessories>[];
      json['top_accessories'].forEach((v) {
        topAccessories!.add(TopAccessories.fromJson(v));
      });
    }
    if (json['featuredbrands'] != null) {
      featuredbrands = <Featuredbrands>[];
      json['featuredbrands'].forEach((v) {
        featuredbrands!.add(Featuredbrands.fromJson(v));
      });
    }
    cartcount = json['cartcount'];
    // wishlistcount = json['wishlistcount'];
    currency =
        json['currency'] != null ? Currency.fromJson(json['currency']) : null;
    notificationCount = json['notification_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (banner1 != null) {
      data['banner1'] = banner1!.map((v) => v.toJson()).toList();
    }
    if (banner2 != null) {
      data['banner2'] = banner2!.map((v) => v.toJson()).toList();
    }
    if (banner3 != null) {
      data['banner3'] = banner3!.map((v) => v.toJson()).toList();
    }
    if (banner4 != null) {
      data['banner4'] = banner4!.map((v) => v.toJson()).toList();
    }
    // if (banner5 != null) {
    //   data['banner5'] = banner5!.map((v) => v.toJson()).toList();
    // }
    if (ourProducts != null) {
      data['our_products'] = ourProducts!.map((v) => v.toJson()).toList();
    }
    if (suggestedProducts != null) {
      data['suggested_products'] =
          suggestedProducts!.map((v) => v.toJson()).toList();
    }
    if (bestSeller != null) {
      data['best_seller'] = bestSeller!.map((v) => v.toJson()).toList();
    }
    if (flashSail != null) {
      data['flash_sail'] = flashSail!.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    if (topAccessories != null) {
      data['top_accessories'] = topAccessories!.map((v) => v.toJson()).toList();
    }
    if (featuredbrands != null) {
      data['featuredbrands'] = featuredbrands!.map((v) => v.toJson()).toList();
    }
    data['cartcount'] = cartcount;
    // data['wishlistcount'] = wishlistcount;
    if (currency != null) {
      data['currency'] = currency!.toJson();
    }
    data['notification_count'] = notificationCount;
    return data;
  }
}

class Banner1 {
  int? id;
  int? linkType;
  String? linkValue;
  String? image;
  String? title;
  String? subTitle;
  String? logo;

  Banner1(
      {this.id,
      this.linkType,
      this.linkValue,
      this.image,
      this.title,
      this.subTitle,
      this.logo});

  Banner1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    title = json['title'];
    subTitle = json['sub_title'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['link_type'] = linkType;
    data['link_value'] = linkValue;
    data['image'] = image;
    data['title'] = title;
    data['sub_title'] = subTitle;
    data['logo'] = logo;
    return data;
  }
}

class Products {
  int? productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  String? store;
  String? manufacturer;
  String? oldprice;
  String? price;
  String? image;

  Products({
    this.productId,
    this.slug,
    this.code,
    this.homeImg,
    this.name,
    this.store,
    this.manufacturer,
    this.oldprice,
    this.price,
    this.image,
  });

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    store = json['store'];
    manufacturer = json['manufacturer'];
    oldprice = json['oldprice'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productId'] = productId;
    data['slug'] = slug;
    data['code'] = code;
    data['home_img'] = homeImg;
    data['name'] = name;
    data['store'] = store;
    data['manufacturer'] = manufacturer;
    data['oldprice'] = oldprice;
    data['price'] = price;
    data['image'] = image;
    return data;
  }
}

class Categories {
  Category? category;

  Categories({this.category});

  Categories.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    return data;
  }
}

class Category {
  int? id;
  String? slug;
  String? image;
  String? name;
  String? description;

  Category({this.id, this.slug, this.image, this.name, this.description});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['slug'] = slug;
    data['image'] = image;
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}

class Featuredbrands {
  int? id;
  String? image;
  String? slug;
  String? name;

  Featuredbrands({this.id, this.image, this.slug, this.name});

  Featuredbrands.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    slug = json['slug'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['slug'] = slug;
    data['name'] = name;
    return data;
  }
}

class Currency {
  String? name;
  String? code;
  String? symbolLeft;
  String? symbolRight;
  String? value;
  int? status;

  Currency(
      {this.name,
      this.code,
      this.symbolLeft,
      this.symbolRight,
      this.value,
      this.status});

  Currency.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    value = json['value'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['code'] = code;
    data['symbol_left'] = symbolLeft;
    data['symbol_right'] = symbolRight;
    data['value'] = value;
    data['status'] = status;
    return data;
  }
}

class TopAccessories {
  Category? category;

  TopAccessories({this.category});

  TopAccessories.fromJson(Map<String, dynamic> json) {
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    return data;
  }
}
