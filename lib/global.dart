import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:protobrain/models/inbox_model.dart';
import 'package:protobrain/models/maybe_model.dart';
import 'package:protobrain/models/outbox_model.dart';
import 'package:protobrain/models/projuct_model.dart';
import 'package:protobrain/models/reference_model.dart';
import 'package:protobrain/models/task_model.dart';
import 'package:protobrain/models/trash_model.dart';
import 'package:protobrain/models/waiting_model.dart';

enum PageState {
  inbox,
  trash,
  maybe,
  reference,
  projuct,
  waiting,
  task,
  outbox,
}

class Global {
  static final List<String> boxesList = [
    "收集箱",
    "回收箱",
    "可能清单",
    "参考资料",
    "项目清单",
    "等待清单",
    "执行清单",
    "完成箱",
  ];

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();
    // register adapters
    Hive.registerAdapter<InboxModel>(InboxModelAdapter());
    Hive.registerAdapter<TrashModel>(TrashModelAdapter());
    Hive.registerAdapter<MaybeModel>(MaybeModelAdapter());
    Hive.registerAdapter<ReferenceModel>(ReferenceModelAdapter());
    Hive.registerAdapter<ProjuctModel>(ProjuctModelAdapter());
    Hive.registerAdapter<WaitingModel>(WaitingModelAdapter());
    Hive.registerAdapter<TaskModel>(TaskModelAdapter());
    Hive.registerAdapter<OutboxModel>(OutboxModelAdapter());

    await Hive.openBox<InboxModel>("inbox_model");
    await Hive.openBox<TrashModel>("trash_model");
    await Hive.openBox<MaybeModel>("maybe_model");
    await Hive.openBox<ReferenceModel>("reference_model");
    await Hive.openBox<ProjuctModel>("projuct_model");
    await Hive.openBox<WaitingModel>("waiting_model");
    await Hive.openBox<TaskModel>("task_model");
    await Hive.openBox<OutboxModel>("outbox_model");
  }
}
