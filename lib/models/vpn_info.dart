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
      base64OpenvpnConfigData: json['Base64OpenvpnConfigData'] ?? '',
      vpnSession: json['NumVpnSessions'] ?? 0,
      countryShortName: json['CountryShortName'] ?? '',
      countryLongName: json['CountryLongName'] ?? '',
      speed: json['Speed'] ?? 0,
      ping: json['Ping'] ?? 0,
      ip: json['Ip'] ?? 0,
      hostname: json['Hostname'] ?? '',
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
