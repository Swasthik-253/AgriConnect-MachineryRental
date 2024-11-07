import 'package:agri_connect/utils/constants/api_constants.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:faker/faker.dart';

part 'machine.mapper.dart';

@MappableClass()
class Machine with MachineMappable {
  final String id;
  final String name;
  final String imageInBase64;
  final String owner;
  final String location;
  final double price;
  final String ownerContact;

  Machine({
    required this.id,
    required this.name,
    required this.imageInBase64,
    required this.owner,
    required this.location,
    required this.price,
    required this.ownerContact,
  });

  factory Machine.test() {
    final Faker faker = Faker();
    return Machine(
      id: faker.guid.guid(),
      name: faker.lorem.word(),
      imageInBase64: ApiConstants.testImage,
      owner: faker.person.name(),
      location: faker.address.city(),
      price: faker.randomGenerator.decimal(min: 1000, scale: 1000),
      ownerContact: faker.phoneNumber.us(),
    );
  }
}
