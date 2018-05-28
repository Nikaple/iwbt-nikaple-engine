// ns_connect(ip, port, mode = 2)
/// @desc Connects to both tcp and udp
/// @param {String} ServerIP      An IP to connect to as a string. e.g. "127.0.0.1"
/// @param {Real} ServerPort      A port as a number to connect on. e.g. 3738

var ip, tcpPort, udpPort, mode;

ip = argument0
tcpPort = argument1
udpPort = argument2

_ns_connect_tcp(ip, tcpPort)
_ns_connect_udp(udpPort)
