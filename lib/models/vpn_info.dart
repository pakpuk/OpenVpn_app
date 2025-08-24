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

  factory VpnInfo.fromJson(Map<String, dynamic> jsonData) {
    return VpnInfo(
      base64OpenvpnConfigData: jsonData['Base64OpenvpnConfigData'] ?? '',
      vpnSession: jsonData['NumVpnSessions'] ?? 0,
      countryShortName: jsonData['CountryShortName'] ?? '',
      countryLongName: jsonData['CountryLongName'] ?? '',
      speed: jsonData['Speed'] ?? 0,
      ping: jsonData['Ping'] ?? 0,
      ip: jsonData['Ip'] ?? 0,
      hostname: jsonData['Hostname'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Base64OpenvpnConfigData': base64OpenvpnConfigData,
      'NumVpnSessions': vpnSession,
      'CountryShortName': countryShortName,
      'CountryLongName': countryLongName,
      'Speed': speed,
      'Ping': ping,
      'Ip': ip,
      'Hostname': hostname,
    };
  }
}
