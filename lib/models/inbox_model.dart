import 'package:hive/hive.dart';

part 'inbox_model.g.dart';

@HiveType(typeId: 0)
class InboxModel {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String title;
}
