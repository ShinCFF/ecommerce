import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;
  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
      name: 'cat1',
      imageUrl:
          'https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8a2l0dGVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    ),
    Category(
      name: 'cat2',
      imageUrl:
          'https://images.unsplash.com/photo-1611267254323-4db7b39c732c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8a2l0dGVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    ),
    Category(
      name: 'cat3',
      imageUrl:
          'https://images.unsplash.com/photo-1558674378-e4334d4fecc2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    ),
  ];
}
