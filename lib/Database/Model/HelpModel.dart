class HelpModel {
  String? help_id;
  String? user_name;
  String? email;
  String? password;
  String? message;

  HelpModel(this.help_id, this.user_name, this.email, this.password, this.message);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'help_id': help_id,
      'user_name': user_name,
      'email': email,
      'password': password,
      'message': message,
    };
    return map;
  }

  HelpModel.fromMap(Map<String, dynamic> map) {
    help_id = map['help_id'];
    user_name = map['user_name'];
    email = map['email'];
    password = map['password'];
    message = map['message'];
  }
}