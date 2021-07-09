class AppointmentModel {
  String id;
  String time;
  String date;
  String user_id;
  String doctor_id;
  String user_name;
  String user_phone;

  AppointmentModel(
    this.id,
    this.time,
    this.date,
    this.user_id,
    this.user_name,
    this.doctor_id,
    this.user_phone,
  );

  AppointmentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    time = json['time'];
    date = json['date'];
    user_id = json['user_id'];
    user_name = json['user_name'];
    doctor_id = json['doctor_id'];
    user_phone = json['user_phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['id'] = this.id;
    data['user_id'] = this.user_id;
    data['date'] = this.date;
    data['user_name'] = this.user_name;
    data['doctor_id'] = this.doctor_id;
    data['user_phone'] = this.user_phone;

    return data;
  }
}
