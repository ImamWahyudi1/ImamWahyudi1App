class ListFood {
  String? name;
  String? image;
  String? desc;

  ListFood({this.name, this.image, this.desc});

  ListFood.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['desc'] = desc;
    return data;
  }

  static List<ListFood> fromJsonList(List? data) {
    if (data == null || data.length == 0) return [];
    return data.map((e) => ListFood.fromJson(e)).toList();
  }
}
