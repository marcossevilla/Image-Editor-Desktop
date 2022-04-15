// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import '../services/file_picker/file_picker.dart' as _i3;
import '../services/file_picker/file_picker_impl.dart' as _i4;
import 'service_locator.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.FilePicker>(() => _i4.FilePickerImpl());
  gh.factory<_i5.Logger>(() => registerModule.logger);
  return get;
}

class _$RegisterModule extends _i6.RegisterModule {}
