// ns_connect_udp(ip, port, mode = 1)
/// @desc Connects to a server via a socket.
/// @param {String} ServerIP      An IP to connect to as a string. e.g. "127.0.0.1"
/// @param {Real} Port            Local port to send udp packet, default is random available port
/// @param {Boolean} Mode         0: blocking, 1: non-blocking

var port;

// randomly choose an available udp port
port = argument0
global.udpSockId = udpconnect(port, 1)
setformat(global.udpSockId, 0)

return global.udpSockId
