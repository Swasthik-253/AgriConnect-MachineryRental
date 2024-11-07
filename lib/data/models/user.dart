import 'package:dart_mappable/dart_mappable.dart';
import 'package:faker/faker.dart';

part 'user.mapper.dart';

@MappableEnum()
enum UserType {
  admin,
  user,
}

@MappableClass()
class User with UserMappable {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String address;
  final UserType type;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.type,
  });

  factory User.test() {
    final faker = Faker();
    return User(
      id: faker.guid.guid(),
      name: faker.person.name(),
      email: faker.internet.email(),
      phoneNumber: faker.phoneNumber.us(),
      address: faker.address.streetAddress(),
      type: UserType.user,
    );
  }

  factory User.admin() {
    final faker = Faker();
    return User(
      id: faker.guid.guid(),
      name: faker.person.name(),
      email: faker.internet.email(),
      phoneNumber: faker.phoneNumber.random.numberOfLength(10),
      address: faker.address.streetAddress(),
      type: UserType.admin,
    );
  }
}
