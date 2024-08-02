class UniversityListModel {
  String? alphaTwoCode;
  List<String>? webPages;
  String? country;
  List<String>? domains;
  String? name;
  Null? stateProvince;

  UniversityListModel(
      {this.alphaTwoCode,
        this.webPages,
        this.country,
        this.domains,
        this.name,
        this.stateProvince});

  UniversityListModel.fromJson(Map<String, dynamic> json) {
    alphaTwoCode = json['alpha_two_code'];
    webPages = json['web_pages'].cast<String>();
    country = json['country'];
    domains = json['domains'].cast<String>();
    name = json['name'];
    stateProvince = json['state-province'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alpha_two_code'] = this.alphaTwoCode;
    data['web_pages'] = this.webPages;
    data['country'] = this.country;
    data['domains'] = this.domains;
    data['name'] = this.name;
    data['state-province'] = this.stateProvince;
    return data;
  }
}
