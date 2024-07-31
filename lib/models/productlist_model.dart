class ProductListModel {
  List<Products>? products;

  ProductListModel({this.products});

  ProductListModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? productId;
  int? categoryId;
  int? subCategoryId;
  int? childCategoryId;
  String? nameEn;
  String? image;
  int? regPrice;
  int? disType;
  int? disPrice;
  String? brand;
  String? stock;
  int? rating;

  Products(
      {this.productId,
        this.categoryId,
        this.subCategoryId,
        this.childCategoryId,
        this.nameEn,
        this.image,
        this.regPrice,
        this.disType,
        this.disPrice,
        this.brand,
        this.stock,
        this.rating});

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    childCategoryId = json['child_category_id'];
    nameEn = json['name_en'];
    image = json['image'];
    regPrice = json['reg_price'];
    disType = json['dis_type'];
    disPrice = json['dis_price'];
    brand = json['brand'];
    stock = json['stock'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['category_id'] = this.categoryId;
    data['sub_category_id'] = this.subCategoryId;
    data['child_category_id'] = this.childCategoryId;
    data['name_en'] = this.nameEn;
    data['image'] = this.image;
    data['reg_price'] = this.regPrice;
    data['dis_type'] = this.disType;
    data['dis_price'] = this.disPrice;
    data['brand'] = this.brand;
    data['stock'] = this.stock;
    data['rating'] = this.rating;
    return data;
  }
}
