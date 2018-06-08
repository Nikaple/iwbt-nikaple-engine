// _ns_connect_udp(ip, port)
/// @desc Connects to a server via a udp socket.

var port;

// randomly choose an available udp port
port = argument0
global.udpSockId = udpsocket_create()
udpsocket_set_destination(global.udpSockId, global.__ip, global.__udp_port)
udpsocket_start(global.udpSockId, false, port)

return global.udpSockId
