class NewUsersItemModel {
  NewUsersItemModel(
      {this.tag,
      this.distance,
      this.halimaCounter,
      this.berlin,
      this.id,
      this.image}) {
    tag = tag ?? "NEW";
    distance = distance ?? "16 km";
    halimaCounter = halimaCounter ?? "Halima, 19";
    berlin = berlin ?? "BERLIN";
    id = id ?? "";
    image = image ??
        "https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  }
  String? tag;
  String? distance;
  String? halimaCounter;
  String? berlin;
  String? id;
  String? image;
}
