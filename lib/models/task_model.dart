import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 6)
class TaskModel {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String title;

  // 没有固定时间的任务都是耍流氓
  @HiveField(2)
  late int scheduleStartTime;

  @HiveField(3)
  late int scheduleEndTime;

  @HiveField(4)
  late String details;

  // 可选的地点
  @HiveField(5)
  String? address;
}
