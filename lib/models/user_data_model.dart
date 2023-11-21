class UserDataModel {
  late String firstname, lastname, email, id, password;
  String? state, zipCode, city, address, referalCode;

  UserDataModel(
      {required this.firstname,
      required this.lastname,
      required this.email,
      required this.password,
      required this.id,
      this.address,
      this.city,
      this.referalCode,
      this.state,
      this.zipCode});

  UserDataModel.fromMap(Map<String, dynamic> data) {
    firstname = data['firstname'];
    lastname = data['lastname'];
    email = data['email'];
    password = data['password'];
    id = data['id'];
    address = data['address'];
    city = data['city'];
    referalCode = data['referalCode'];
    state = data['data'];
    zipCode = data['zipCode'];
  }

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'password': password,
      'id': id,
      'address': address,
      'city': city,
      'referalCode': referalCode,
      'state': state,
      'zipCode': zipCode,
    };
  }
}
