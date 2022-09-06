
class Contact{
  late String name;
  late String number;
  late String? email;
  late String? address;

  Contact({
    required this.name,
    required this.number,
    this.email,
    this.address
  });

}