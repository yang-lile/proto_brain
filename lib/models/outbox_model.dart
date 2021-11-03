import 'package:hive/hive.dart';

part 'outbox_model.g.dart';

@HiveType(typeId: 7)
class OutboxModel {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String title;
}
