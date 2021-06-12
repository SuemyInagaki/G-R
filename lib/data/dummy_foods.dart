import 'package:c4c/models/food.dart';
import 'package:c4c/models/user.dart';
import 'package:c4c/models/address.dart';

const DUMMY_FOODS = {
  '1': const Food(
    id: '1',
    type: 'fruit',
    name: 'banana',
    finality: 'fertilizer',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 4,
    date: "2021-04-09",
  ),
  '2': const Food(
    id: '2',
    type: 'fruit',
    name: 'mango',
    finality: 'human',
    donor: const User(
      id: '987654321',
      name: 'Maria Silva',
      phone: '987654321',
      email: 'maria@outlook.com',
      address: const Address(
        name: 'grandma',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Petropolis',
        postal: '22715020',
        address: 'Rua general severino 3400',
      ),
      password: 'abcde',
    ),
    quantity: 2,
    date: "2021-04-10",
  ),
  '3': const Food(
    id: '3',
    type: 'fruit',
    name: 'apple',
    finality: 'fertilizer',
    donor: const User(
      id: '987654321',
      name: 'Maria Silva',
      phone: '987654321',
      email: 'maria@outlook.com',
      address: const Address(
        name: 'grandma',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Petropolis',
        postal: '22715020',
        address: 'Rua general severino 3400',
      ),
      password: 'abcde',
    ),
    quantity: 10,
    date: "2021-04-25",
  ),
  '4': const Food(
    id: '4',
    type: 'vegetable',
    name: 'potato',
    finality: 'human',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 7,
    date: "2021-04-26",
  ),
  '5': const Food(
    id: '5',
    type: 'vegetable',
    name: 'carrot',
    finality: 'human',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 3,
    date: "2021-04-12",
  ),
  '6': const Food(
    id: '6',
    type: 'vegetable',
    name: 'pumpkin',
    finality: 'animal',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 3,
    date: "2021-04-19",
  ),
  '7': const Food(
    id: '7',
    type: 'vegetable',
    name: 'cucumber',
    finality: 'human',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 6,
    date: "2021-04-21",
  ),
  '8': const Food(
    id: '8',
    type: 'fruit',
    name: 'banana',
    finality: 'fertilizer',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 5,
    date: "2021-04-23",
  ),
  '9': const Food(
    id: '9',
    type: 'vegetable',
    name: 'yam',
    finality: 'animal',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 11,
    date: "2021-04-27",
  ),
  '10': const Food(
    id: '10',
    type: 'vegetable',
    name: 'tomato',
    finality: 'fertilizer',
    donor: const User(
      id: '123456780',
      name: 'Joseph Santos',
      phone: '123456780',
      email: 'joseph@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua correio 21',
      ),
      password: '123@abc',
    ),
    quantity: 8,
    date: "2021-04-07",
  ),
  '11': const Food(
    id: '11',
    type: 'fruit',
    name: 'watermelon',
    finality: 'animal',
    donor: const User(
      id: '123456780',
      name: 'Joseph Santos',
      phone: '123456780',
      email: 'joseph@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua correio 21',
      ),
      password: '123@abc',
    ),
    quantity: 13,
    date: "2021-04-30",
  ),
  '12': const Food(
    id: '12',
    type: 'fruit',
    name: 'melon',
    finality: 'fertilizer',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 8,
    date: "2021-04-20",
  ),
  '13': const Food(
    id: '13',
    type: 'fruit',
    name: 'pineapple',
    finality: 'human',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 6,
    date: "2021-04-10",
  ),
  '14': const Food(
    id: '14',
    type: 'fruit',
    name: 'papaya',
    finality: 'fertilizer',
    donor: const User(
      id: '123456780',
      name: 'Joseph Santos',
      phone: '123456780',
      email: 'joseph@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua correio 21',
      ),
      password: '123@abc',
    ),
    quantity: 1,
    date: "2021-04-10",
  ),
  '15': const Food(
    id: '15',
    type: 'fruit',
    name: 'strawbery',
    finality: 'animal',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 5,
    date: "2021-04-02",
  ),
  '16': const Food(
    id: '16',
    type: 'fruit',
    name: 'banana',
    finality: 'human',
    donor: const User(
      id: '123456789',
      name: 'John Smith',
      phone: '123456789',
      email: 'john@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua maria josefina 21',
      ),
      password: '123@abc',
    ),
    quantity: 2,
    date: "2021-04-02",
  ),
  '17': const Food(
    id: '17',
    type: 'vegetable',
    name: 'cucumber',
    finality: 'fertilizer',
    donor: const User(
      id: '987654321',
      name: 'Maria Silva',
      phone: '987654321',
      email: 'maria@outlook.com',
      address: const Address(
        name: 'grandma',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Petropolis',
        postal: '22715020',
        address: 'Rua general severino 3400',
      ),
      password: 'abcde',
    ),
    quantity: 9,
    date: "2021-03-27",
  ),
  '18': const Food(
    id: '18',
    type: 'vegetable',
    name: 'broccoli',
    finality: 'human',
    donor: const User(
      id: '123456780',
      name: 'Joseph Santos',
      phone: '123456780',
      email: 'joseph@mail.com',
      address: const Address(
        name: 'my home',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Rio de Janeiro',
        postal: '22715020',
        address: 'Rua correio 21',
      ),
      password: '123@abc',
    ),
    quantity: 7,
    date: "2021-04-21",
  ),
  '19': const Food(
    id: '19',
    type: 'vegetable',
    name: 'carrot',
    finality: 'animal',
    donor: const User(
      id: '987654321',
      name: 'Maria Silva',
      phone: '987654321',
      email: 'maria@outlook.com',
      address: const Address(
        name: 'grandma',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Petropolis',
        postal: '22715020',
        address: 'Rua general severino 3400',
      ),
      password: 'abcde',
    ),
    quantity: 4,
    date: "2021-04-20",
  ),
  '20': const Food(
    id: '20',
    type: 'vegetable',
    name: 'yam',
    finality: 'fertilizer',
    donor: const User(
      id: '987654321',
      name: 'Maria Silva',
      phone: '987654321',
      email: 'maria@outlook.com',
      address: const Address(
        name: 'grandma',
        country: 'Brazil',
        state: 'Rio de Janeiro',
        city: 'Petropolis',
        postal: '22715020',
        address: 'Rua general severino 3400',
      ),
      password: 'abcde',
    ),
    quantity: 1,
    date: "2021-04-20",
  ),
};