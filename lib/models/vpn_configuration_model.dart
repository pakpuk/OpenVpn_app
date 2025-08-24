class VpnConfigurationModel {
  final String username;
  final String password;
  final String ping;
  final String countryname;
  final String config;

  VpnConfigurationModel(
      {required this.username,
      required this.password,
      required this.ping,
      required this.countryname,
      required this.config});
}
