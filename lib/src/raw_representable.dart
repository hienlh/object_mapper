part of '../object_mapper.dart';

abstract class RawRepresentable<RawValue> {
  RawValue get rawValue;

  factory RawRepresentable(Type type, RawValue rawValue) {
    var constructor = Mappable.factories[type];
    if (constructor != null) {
      return constructor(rawValue);
    } else {
      throw '${type.toString()} is not defined in Reflection.factories';
    }
  }
}
