# protobrain

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 需求

1.  分割身份
2.  提供收集箱
3.  提供分类方法
4.  分离 日程、任务、待办事项、目标计划
5.  分离 收集箱、参考资料、可能清单、回收箱、项目清单、立即做、等待清单、执行清单、日历区

6.  提供基础的属性
7.  提供多属性编组
8.  提供属性展示模板
9.  提供样式
10. 提供json编码转样式组件
11. 提供可视化的编码板
12. 提供命令行生成代码

资源类型说明

1.  文本
2.  时间
3.  图片
4.  文件索引

## 清单页面

- 收集箱
- 参考资料
- 可能清单
- 回收箱
- 项目清单
- 等待清单
- 执行清单

其中，立即做和日历区特殊处理

## 类型说明

- 收集箱：纯文本
- 可能清单：纯文本
- 回收箱：泛型
- 项目清单：xmind类型，需要分解，同时也需要在项目清单中备份
- 等待清单：截至时间+纯文本
- 执行清单：可以一步搞定的，纯文本+需要执行多久时间
- 参考资料：文本+收集时间+描述+文件索引/文本段落（可以转文本存储）

## 生成代码的命令行

```
flutter packages pub run build_runner build
```
