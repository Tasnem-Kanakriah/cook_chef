  class MealsModel {
    String? message;
    List<Meals>? meals;

    MealsModel({this.message, this.meals});

    MealsModel.fromMap(Map<String, dynamic> json) {
      message = json['message'];
      if (json['meals'] != null) {
        meals = <Meals>[];
        json['meals'].forEach((v) {
          meals!.add(Meals.fromMap(v));
        });
      }
    }

    Map<String, dynamic> toMap() {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['message'] = message;
      if (meals != null) {
        data['meals'] = meals!.map((v) => v.toMap()).toList();
      }
      return data;
    }
  }

  class Meals {
    String? sId;
    String? name;
    String? description;
    int? price;
    String? howToSell;
    List<String>? images;
    String? category;
    String? chefId;
    String? status;
    String? createdAt;
    String? updatedAt;
    int? iV;

    Meals(
        {this.sId,
        this.name,
        this.description,
        this.price,
        this.howToSell,
        this.images,
        this.category,
        this.chefId,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.iV});

    Meals.fromMap(Map<String, dynamic> json) {
      sId = json['_id'];
      name = json['name'];
      description = json['description'];
      price = json['price'];
      howToSell = json['howToSell'];
      images = json['images'].cast<String>();
      category = json['category'];
      chefId = json['chefId'];
      status = json['status'];
      createdAt = json['createdAt'];
      updatedAt = json['updatedAt'];
      iV = json['__v'];
    }

    Map<String, dynamic> toMap() {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['_id'] = sId;
      data['name'] = name;
      data['description'] = description;
      data['price'] = price;
      data['howToSell'] = howToSell;
      data['images'] = images;
      data['category'] = category;
      data['chefId'] = chefId;
      data['status'] = status;
      data['createdAt'] = createdAt;
      data['updatedAt'] = updatedAt;
      data['__v'] = iV;
      return data;
    }
  }
