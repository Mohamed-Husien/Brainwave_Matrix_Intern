import 'package:hive/hive.dart';
part 'to_do_item_model.g.dart';

@HiveType(typeId: 0)
class ToDoItemModel extends HiveObject {
  @HiveField(0)
  final String content;
  @HiveField(1)
  final String currentDate;
  @HiveField(2)
  bool checkBoxValue;

  ToDoItemModel(
      {required this.content,
      required this.currentDate,
      required this.checkBoxValue});
}
