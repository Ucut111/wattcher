
import 'package:equatable/equatable.dart';

class Avatar extends Equatable {
  final String id;
  final String pic;

  const Avatar({
    required this.id,
    required this.pic,
  });

  @override
  List<Object?> get props => [pic];

  factory Avatar.fromPic(String pic) {
    return Avatar(id: '', pic: pic);
  }
}
