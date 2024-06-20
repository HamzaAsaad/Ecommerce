// ignore_for_file: prefer_collection_literals, unnecessary_new, unnecessary_this

class ProdactsModel {
  int? prodactsId;
  String? prodactsName;
  String? prodactsNameAr;
  String? prodactsDesc; 
  String? prodactsDescAr;
  String? prodactsImage;
  int? prodactsCount;
  int? prodactsActive;
  int? prodactsPrice;
  int? prodactsDiscount;
  String? prodactsDate;
  int? prodactsCategories;
  int? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDatetime;

  ProdactsModel(
      {this.prodactsId,
      this.prodactsName,
      this.prodactsNameAr,
      this.prodactsDesc,
      this.prodactsDescAr,
      this.prodactsImage,
      this.prodactsCount,
      this.prodactsActive,
      this.prodactsPrice,
      this.prodactsDiscount,
      this.prodactsDate,
      this.prodactsCategories,
      this.categoriesId,
      this.categoriesName,
      this.categoriesNameAr,
      this.categoriesImage,
      this.categoriesDatetime});

  ProdactsModel.fromJson(Map<String, dynamic> json) {
    prodactsId = json['prodacts_id'];
    prodactsName = json['prodacts_name'];
    prodactsNameAr = json['prodacts_name_ar'];
    prodactsDesc = json['prodacts_desc'];
    prodactsDescAr = json['prodacts_desc_ar'];
    prodactsImage = json['prodacts_image'];
    prodactsCount = json['prodacts_count'];
    prodactsActive = json['prodacts_active'];
    prodactsPrice = json['prodacts_price'];
    prodactsDiscount = json['prodacts_discount'];
    prodactsDate = json['prodacts_date'];
    prodactsCategories = json['prodacts_categories'];
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesNameAr = json['categories_name_ar'];
    categoriesImage = json['categories_image'];
    categoriesDatetime = json['categories_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['prodacts_id'] = this.prodactsId;
    data['prodacts_name'] = this.prodactsName;
    data['prodacts_name_ar'] = this.prodactsNameAr;
    data['prodacts_desc'] = this.prodactsDesc;
    data['prodacts_desc_ar'] = this.prodactsDescAr;
    data['prodacts_image'] = this.prodactsImage;
    data['prodacts_count'] = this.prodactsCount;
    data['prodacts_active'] = this.prodactsActive;
    data['prodacts_price'] = this.prodactsPrice;
    data['prodacts_discount'] = this.prodactsDiscount;
    data['prodacts_date'] = this.prodactsDate;
    data['prodacts_categories'] = this.prodactsCategories;
    data['categories_id'] = this.categoriesId;
    data['categories_name'] = this.categoriesName;
    data['categories_name_ar'] = this.categoriesNameAr;
    data['categories_image'] = this.categoriesImage;
    data['categories_datetime'] = this.categoriesDatetime;
    return data;
  }
}
