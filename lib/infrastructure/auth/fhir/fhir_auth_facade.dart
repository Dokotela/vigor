import 'package:vigor/domain/auth/i_auth_facade.dart';

class FhirAuthFacade implements IAuthFacade {
  final SmartAuth _smartAuth;
  final GenericAuth _genericAuth;

  FhirAuthFacade(this._smartAuth, this._genericAuth);
}
