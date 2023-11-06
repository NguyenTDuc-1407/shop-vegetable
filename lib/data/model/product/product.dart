// ignore_for_file: camel_case_types, unnecessary_new, prefer_collection_literals, unnecessary_this, empty_constructor_bodies, prefer_void_to_null

class product {
  String? name;
  String? alias;
  String? description;
  List<Null>? keywords;
  int? active;
  int? order;
  List<String>? providers;
  Aliases? aliases;
  List<Null>? requires;

  product(
      {this.name,
      this.alias,
      this.description,
      this.keywords,
      this.active,
      this.order,
      this.providers,
      this.aliases,
      this.requires});

  product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alias = json['alias'];
    description = json['description'];
    if (json['keywords'] != null) {
      keywords = <Null>[];
      // json['keywords'].forEach((v) { keywords!.add(new Null.fromJson(v)); });
    }
    active = json['active'];
    order = json['order'];
    providers = json['providers'].cast<String>();
    aliases =
        json['aliases'] != null ? new Aliases.fromJson(json['aliases']) : null;
    if (json['requires'] != null) {
      requires = <Null>[];
      // json['requires'].forEach((v) { requires!.add(new Null.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['alias'] = this.alias;
    data['description'] = this.description;
    if (this.keywords != null) {
      // data['keywords'] = this.keywords!.map((v) => v.toJson()).toList();
    }
    data['active'] = this.active;
    data['order'] = this.order;
    data['providers'] = this.providers;
    if (this.aliases != null) {
      data['aliases'] = this.aliases!.toJson();
    }
    if (this.requires != null) {
      // data['requires'] = this.requires!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Aliases {
  // Aliases({});

  Aliases.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}
