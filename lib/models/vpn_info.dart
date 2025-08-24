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

  factory VpnInfo.fromJson(Map<String, dynamic> json) {
    return VpnInfo(
      base64OpenvpnConfigData: json['base64OpenvpnConfigData'] ?? '',
      vpnSession: json['vpnSession'] ?? 0,
      countryShortName: json['countryShortName'] ?? '',
      countryLongName: json['countryLongName'] ?? '',
      speed: json['speed'] ?? 0,
      ping: json['ping'] ?? 0,
      ip: json['Ip'] ?? 0,
      hostname: json['Hostname'] ?? '',
    );
  }
}
