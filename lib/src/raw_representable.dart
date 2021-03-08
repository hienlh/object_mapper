part of '../object_mapper.dart';

abstract class RawRepresentable<RawValue> {
  RawValue get rawValue;

  factory RawRepresentable(Type type, RawValue rawValue) {
    var constructor = Mappable.factories[type]!;
    return constructor(rawValue);
  }
}
