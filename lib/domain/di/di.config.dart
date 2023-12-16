// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repos/home/ds/home_online_ds.dart' as _i5;
import '../../data/repos/home/home_repo.dart' as _i7;
import '../../ui/screens/home/home_view_model.dart' as _i11;
import '../../ui/screens/splash/splash_view_model.dart' as _i8;
import '../repos/home/ds/home_online_ds.dart' as _i4;
import '../repos/home/home_repo.dart' as _i6;
import '../use_case/get_books_use_case.dart' as _i9;
import '../use_case/get_newest_books_use_case.dart' as _i10;
import 'app_module.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.Connectivity>(() => appModule.getConnectivity());
    gh.factory<_i4.HomeOnlineDS>(() => _i5.HomeOnlineDSImpl());
    gh.factory<_i6.HomeRepo>(() => _i7.HomeRepoImpl(
          gh<_i4.HomeOnlineDS>(),
          gh<_i3.Connectivity>(),
        ));
    gh.factory<_i8.SplashViewModel>(() => _i8.SplashViewModel());
    gh.factory<_i9.GetBooksUseCase>(
        () => _i9.GetBooksUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i10.GetNewestBooksUseCase>(
        () => _i10.GetNewestBooksUseCase(gh<_i6.HomeRepo>()));
    gh.factory<_i11.HomeViewModel>(() => _i11.HomeViewModel(
          gh<_i9.GetBooksUseCase>(),
          gh<_i10.GetNewestBooksUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i12.AppModule {}
