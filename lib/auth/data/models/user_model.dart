class UserModel {
  final String firstName;
  final String image;
  final String token;

   factory UserModel.fromJson(Map<String, dynamic> json) {
       return UserModel(json["firstName"], json["image"], json["token"]);
   }

  UserModel(this.firstName, this.image, this.token);

   Map<String, dynamic> toJson() => {
     "firstName": firstName,
     "image": image,
     "token": token
   };
}