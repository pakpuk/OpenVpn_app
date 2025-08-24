class VpnInfo {
  late final String hostname;
  late final int ip;
  late final int ping;
  late final int speed;
  late final String countryLongName;
  late final String countryShortName;
  late final int vpnSession;
  late final String base64OpenvpnConfigData;

  VpnInfo({
    required this.base64OpenvpnConfigData,
    required this.vpnSession,
    required this.countryShortName,
    required this.countryLongName,
    required this.speed,
    required this.ping,
    required this.ip,
    required this.hostname,
  });
}
