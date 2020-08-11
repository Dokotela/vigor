String basicEnumToString(dynamic thisEnum) =>
    thisEnum.toString().replaceFirst('${thisEnum.runtimeType}.', '');
