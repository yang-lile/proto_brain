import 'package:hive/hive.dart';

part 'maybe_model.g.dart';

@HiveType(typeId: 2)
class MaybeModel {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String title;
}
