import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'grocery_model.freezed.dart';
part 'grocery_model.g.dart';

@freezed
@HiveType(typeId: 1, adapterName: 'GroceryItemAdapter') // ✅ unique typeId
class GroceryItem with _$GroceryItem {
  const factory GroceryItem({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required int quantity,
    @HiveField(3) required String unit,
    @HiveField(4) required double price,
  }) = _GroceryItem;

  factory GroceryItem.fromJson(Map<String, dynamic> json) =>
      _$GroceryItemFromJson(json);
}
