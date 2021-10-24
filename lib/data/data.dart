import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:flutter_networth_app/models/spelare.dart';

final faker = Faker();

final urlImages = [
  'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
  'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
];

List<User> getUsers() => List.generate(
      urlImages.length,
      (index) => User(
        name: faker.person.name(),
        //urlImage: urlImages[index],
      ),
    );
