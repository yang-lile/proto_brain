import 'package:hive/hive.dart';

part 'projuct_model.g.dart';

@HiveType(typeId: 4)
class ProjuctModel {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String title;

  // 写上项目分析
  @HiveField(2)
  late String details;

  // 指向子任务的 id 列表
  @HiveField(3)
  late List<int> subTasks;
}
