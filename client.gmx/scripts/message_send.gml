var _buff = argument0
var _sock = global.apiServer

if _buff == global.posBuff {
    network_send_udp(_sock, global.posIp, global.posPort, _buff, buffer_tell(_buff))
}else {
    network_send_packet(_sock, _buff, buffer_tell(_buff))
}
