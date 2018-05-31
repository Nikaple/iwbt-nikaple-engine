// ns_connect(ip, port, mode = 2)
/// @desc Connects to a server via a socket.
/// @param {String} ServerIP      An IP to connect to as a string. e.g. "127.0.0.1"
/// @param {Real} ServerPort      A port as a number to connect on. e.g. 3738

var ip, port;

ip = set_default(argument0, global.__ip)
port = set_default(argument1, global.__tcp_port)


global.sockId = socket_create()
socket_connect(global.sockId, ip, port)

if (global.sockId < 0) {
    _ns_handle("connect_failed", "")
}

return global.sockId
