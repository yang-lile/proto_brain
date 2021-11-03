import 'package:hive/hive.dart';

part 'reference_model.g.dart';

@HiveType(typeId: 3)
class ReferenceModel {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String title;

  // 存储位置可能是纸质日历或者手机文件管理器，总之要自己说明
  @HiveField(2)
  String? address;
}
