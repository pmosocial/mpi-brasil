import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'keyword.g.dart'; // autogenerated serizalization class, do not change it.

@JsonSerializable(explicitToJson: true, nullable: true)
class Keyword with ChangeNotifier {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'word')
  final String word;
  @JsonKey(name: 'synonyms', defaultValue: null)
  final List<String> synonyms;
  @JsonKey(name: 'definition')
  final String definition;
  @JsonKey(name: 'source')
  final String source;

  Keyword({
    this.id,
    this.word,
    this.synonyms,
    this.definition,
    this.source,
  });

  factory Keyword.fromJson(Map<String, dynamic> json) => _$KeywordFromJson(json);
  Map<String, dynamic> toJson() => _$KeywordToJson(this);

  String synonymsListToString() {
    String output = "";

    for (String s in synonyms) {
      if (output == "")
        output = s;
      else
        output += ", " + s;
    }
    return output;
  }
}
