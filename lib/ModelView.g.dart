// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ModelView.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ModelView on ModelViewBase, Store {
  late final _$oldValueAtom =
      Atom(name: 'ModelViewBase.oldValue', context: context);

  @override
  String get oldValue {
    _$oldValueAtom.reportRead();
    return super.oldValue;
  }

  @override
  set oldValue(String value) {
    _$oldValueAtom.reportWrite(value, super.oldValue, () {
      super.oldValue = value;
    });
  }

  late final _$textingValueAtom =
      Atom(name: 'ModelViewBase.textingValue', context: context);

  @override
  String get textingValue {
    _$textingValueAtom.reportRead();
    return super.textingValue;
  }

  @override
  set textingValue(String value) {
    _$textingValueAtom.reportWrite(value, super.textingValue, () {
      super.textingValue = value;
    });
  }

  late final _$ModelViewBaseActionController =
      ActionController(name: 'ModelViewBase', context: context);

  @override
  dynamic onChangeText(String text) {
    final _$actionInfo = _$ModelViewBaseActionController.startAction(
        name: 'ModelViewBase.onChangeText');
    try {
      return super.onChangeText(text);
    } finally {
      _$ModelViewBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic listenerClickOk() {
    final _$actionInfo = _$ModelViewBaseActionController.startAction(
        name: 'ModelViewBase.listenerClickOk');
    try {
      return super.listenerClickOk();
    } finally {
      _$ModelViewBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
oldValue: ${oldValue},
textingValue: ${textingValue}
    ''';
  }
}
