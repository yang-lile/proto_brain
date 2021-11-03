import 'package:hive/hive.dart';

part 'trash_model.g.dart';

@HiveType(typeId: 1)
class TrashModel {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String title;
}
