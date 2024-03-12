import 'package:gql/ast.dart';

class Query$GetAllCountries {
  Query$GetAllCountries({
    required this.countries,
    this.$__typename = 'Query',
  });

  factory Query$GetAllCountries.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$GetAllCountries(
      countries: (l$countries as List<dynamic>)
          .map((e) => Query$GetAllCountries$countries.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllCountries$countries> countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countries = countries;
    _resultData['countries'] = l$countries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllCountries) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries.length != lOther$countries.length) {
      return false;
    }
    for (int i = 0; i < l$countries.length; i++) {
      final l$countries$entry = l$countries[i];
      final lOther$countries$entry = lOther$countries[i];
      if (l$countries$entry != lOther$countries$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllCountries on Query$GetAllCountries {
  CopyWith$Query$GetAllCountries<Query$GetAllCountries> get copyWith =>
      CopyWith$Query$GetAllCountries(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllCountries<TRes> {
  factory CopyWith$Query$GetAllCountries(
    Query$GetAllCountries instance,
    TRes Function(Query$GetAllCountries) then,
  ) = _CopyWithImpl$Query$GetAllCountries;

  factory CopyWith$Query$GetAllCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCountries;

  TRes call({
    List<Query$GetAllCountries$countries>? countries,
    String? $__typename,
  });
  TRes countries(
      Iterable<Query$GetAllCountries$countries> Function(
              Iterable<
                  CopyWith$Query$GetAllCountries$countries<
                      Query$GetAllCountries$countries>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllCountries<TRes>
    implements CopyWith$Query$GetAllCountries<TRes> {
  _CopyWithImpl$Query$GetAllCountries(
    this._instance,
    this._then,
  );

  final Query$GetAllCountries _instance;

  final TRes Function(Query$GetAllCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllCountries(
        countries: countries == _undefined || countries == null
            ? _instance.countries
            : (countries as List<Query$GetAllCountries$countries>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes countries(
          Iterable<Query$GetAllCountries$countries> Function(
                  Iterable<
                      CopyWith$Query$GetAllCountries$countries<
                          Query$GetAllCountries$countries>>)
              _fn) =>
      call(
          countries: _fn(_instance.countries
              .map((e) => CopyWith$Query$GetAllCountries$countries(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllCountries<TRes>
    implements CopyWith$Query$GetAllCountries<TRes> {
  _CopyWithStubImpl$Query$GetAllCountries(this._res);

  TRes _res;

  call({
    List<Query$GetAllCountries$countries>? countries,
    String? $__typename,
  }) =>
      _res;

  countries(_fn) => _res;
}

const documentNodeQueryGetAllCountries = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllCountries'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'countries'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capital'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetAllCountries$countries {
  Query$GetAllCountries$countries({
    required this.name,
    required this.capital,
    this.$__typename = 'Country',
  });

  factory Query$GetAllCountries$countries.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$$__typename = json['__typename'];
    return Query$GetAllCountries$countries(
      name: (l$name as String),
      capital: (l$capital as String? ??
          ''), // Handle null by providing a default value
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String capital;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$capital = capital;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$capital,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllCountries$countries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}


extension UtilityExtension$Query$GetAllCountries$countries
    on Query$GetAllCountries$countries {
  CopyWith$Query$GetAllCountries$countries<Query$GetAllCountries$countries>
      get copyWith => CopyWith$Query$GetAllCountries$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllCountries$countries<TRes> {
  factory CopyWith$Query$GetAllCountries$countries(
    Query$GetAllCountries$countries instance,
    TRes Function(Query$GetAllCountries$countries) then,
  ) = _CopyWithImpl$Query$GetAllCountries$countries;

  factory CopyWith$Query$GetAllCountries$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCountries$countries;

  TRes call({
    String? name,
    String? capital,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllCountries$countries<TRes>
    implements CopyWith$Query$GetAllCountries$countries<TRes> {
  _CopyWithImpl$Query$GetAllCountries$countries(
    this._instance,
    this._then,
  );

  final Query$GetAllCountries$countries _instance;

  final TRes Function(Query$GetAllCountries$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? capital = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllCountries$countries(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        capital: capital == _undefined || capital == null
            ? _instance.capital
            : (capital as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllCountries$countries<TRes>
    implements CopyWith$Query$GetAllCountries$countries<TRes> {
  _CopyWithStubImpl$Query$GetAllCountries$countries(this._res);

  TRes _res;

  call({
    String? name,
    String? capital,
    String? $__typename,
  }) =>
      _res;
}
