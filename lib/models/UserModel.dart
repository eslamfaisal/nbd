class UserModel {
  String id;
  String first_name;
  String last_name;
  String email;
  String phone;
  String address;
  String type;

  UserModel(
    this.id,
    this.first_name,
    this.last_name,
    this.email,
    this.phone,
    this.address,
    this.type,
  );

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    first_name = json['first_name'];
    last_name = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    type = json["type"];
    address = json["address"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.first_name;
    data['last_name'] = this.last_name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data["type"] = this.type;
    data["address"] = this.address;
    return data;
  }
}
