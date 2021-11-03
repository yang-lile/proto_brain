import 'package:hive/hive.dart';

part 'waiting_model.g.dart';

@HiveType(typeId: 5)
class WaitingModel {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String title;

  // 记录处理方法，需要几点去提醒一下，什么时候签收一下。
  @HiveField(2)
  late String details;

  // 后期支持通知
}
